load("istio-generated/xxx-generated-istio.lib.yaml", "istio_generated")
load("add-istio-injection.lib.yaml", "add_istio_injection")
load("app-sidecar.lib.yaml", "app_sidecar")
load("control-plane-network-policy.lib.yaml", "control_plane_network_policy")
load("external-routing.lib.yaml", "external_routing")
load("fluent-bit-ingressgateway-config-map.lib.yaml", "fluent_bit_ingressgateway_config_map")
load("gateway.lib.yaml", "gateway")
load("ingressgateway-service-nodeport.lib.yaml", "ingressgateway_service_nodeport")
load("istio-kapp-ordering.lib.yaml", "istio_kapp_ordering")
load("label-istio-ns.lib.yaml", "label_istio_ns")
load("peer-auth-fluentd.lib.yaml", "peer_auth_fluentd")
load("remove-hpas-and-scale-istiod.lib.yaml", "remove_hpas_and_scale_istiod")
load("remove-resource-requirements.lib.yaml", "remove_resource_requirements")
load("upgrade-istio-sidecars-job.lib.yaml", "upgrade_istio_sidecars_job")
load("use-external-dns-for-wildcard.lib.yaml", "use_external_dns_for_wildcard")
load("use-first-party-jwt-tokens.lib.yaml", "use_first_party_jwt_tokens")

all_overlays = [
  istio_generated,
  add_istio_injection,
  app_sidecar,
  control_plane_network_policy,
  external_routing,
  fluent_bit_ingressgateway_config_map,
  ingressgateway_service_nodeport,
  istio_kapp_ordering,
  label_istio_ns,
  peer_auth_fluentd,
  remove_hpas_and_scale_istiod,
  remove_resource_requirements,
  upgrade_istio_sidecars_job,
  use_external_dns_for_wildcard,
  use_first_party_jwt_tokens,
#  gateway,
]
