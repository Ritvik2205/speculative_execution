.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
lea ecx, qword ptr [rdi]
lea cx, qword ptr [rbx + rax + 80]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
lea ebx, qword ptr [rdx + rdx + 6]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
adc dl, bl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
