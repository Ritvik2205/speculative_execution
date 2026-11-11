.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
mov al, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
test ax, 13879
jns .bb_0.2
jmp .exit_0
.bb_0.2:
cmp sil, -11
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and eax, -409673666
lea rdi, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
