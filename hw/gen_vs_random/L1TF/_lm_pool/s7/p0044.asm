.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rsi, 24
test dl, bl
jmp .bb_0.1
.bb_0.1:
movzx eax, dil
lea rdx, qword ptr [rcx + rdi + 24]
jmp .bb_0.2
.bb_0.2:
and bl, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor cl, bl
sub dl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
