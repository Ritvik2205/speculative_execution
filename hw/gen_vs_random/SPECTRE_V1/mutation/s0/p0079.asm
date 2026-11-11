.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
adc dl, 80
lea rax, qword ptr [rdi]
sbb cl, cl
lea ax, qword ptr [rbx + rsi]
and ax, 2806
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
cmp bl, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
test ebx, eax
test ax, 636
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmp edx, 44
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
sub bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
