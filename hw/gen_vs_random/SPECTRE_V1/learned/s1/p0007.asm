.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
sbb al, -14
sub al, -89
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test sil, 47
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
xchg cl, sil
setb dl
and al, -23
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sub ax, -15315
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
