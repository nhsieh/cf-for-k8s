load("add-istio-injection.lib.yaml", "add_istio_injection")
load("control-plane-network-policy.lib.yaml", "control_plane_network_policy")
load("external-routing.lib.yaml", "external_routing")
load("ingressgateway-service-nodeport.lib.yaml", "ingressgateway_service_nodeport")
load("istio-kapp-ordering.lib.yaml", "istio_kapp_ordering")
load("label-istio-ns.lib.yaml", "label_istio_ns")
load("remove-hpas-and-scale-istiod.lib.yaml", "remove_hpas_and_scale_istiod")
load("remove-resource-requirements.lib.yaml", "remove_resource_requirements")
load("use-external-dns-for-wildcard.lib.yaml", "use_external_dns_for_wildcard")
load("use-first-party-jwt-tokens.lib.yaml", "use_first_party_jwt_tokens")

all_overlays = [
  add_istio_injection,
  control_plane_network_policy,
  external_routing,
  istio_kapp_ordering,
  label_istio_ns,
  remove_hpas_and_scale_istiod,
]

conditional_overlays = {
  "ingressgateway_service_nodeport": ingressgateway_service_nodeport,
  "remove_resource_requirements": remove_resource_requirements,
  "use_external_dns_for_wildcard": use_external_dns_for_wildcard,
  "use_first_party_jwt_tokens": use_first_party_jwt_tokens,
}
