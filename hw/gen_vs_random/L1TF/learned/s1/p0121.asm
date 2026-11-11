.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 94
xor al, 89
lea bx, qword ptr [rax]
cmp rcx, 5
xor dil, dl
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
or al, dl
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
