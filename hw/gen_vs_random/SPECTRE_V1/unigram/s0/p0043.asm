.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
add cl, 75 # instrumentation
sbb sil, dil
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
bts rdi, 90
cmovnbe rcx, rdi
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
setns bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, dil
setb bl
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 25
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 9
or al, bl
and bl, sil
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
