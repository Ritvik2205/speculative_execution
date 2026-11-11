.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rcx + rdx + 72]
xor dl, al
btc cx, ax
test dl, -37
jmp .bb_0.1
.bb_0.1:
and bl, bl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
