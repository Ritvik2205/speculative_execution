.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -92 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, -101
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
setns dl
cmovnle rax, rax
lea rcx, qword ptr [rdi]
add bl, 106 # instrumentation
cmovs eax, edi
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add cl, 32 # instrumentation
sbb bl, cl
and eax, 59
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -106
bts rax, 140
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
sbb bl, bl
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
