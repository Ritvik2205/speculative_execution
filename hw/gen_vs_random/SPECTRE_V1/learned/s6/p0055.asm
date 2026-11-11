.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 91
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
or al, 19
cmovb eax, ecx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, -47
lea rsi, qword ptr [rbx + rdx + 74]
test cl, -33
xor dil, -37
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
test sil, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
