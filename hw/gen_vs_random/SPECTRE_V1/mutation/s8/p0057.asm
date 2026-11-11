.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
adc sil, sil
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
movzx cx, bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovb rcx, rdx
add di, bx
bts dx, 207
neg dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rax, rdx
add eax, -55403434
test rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
