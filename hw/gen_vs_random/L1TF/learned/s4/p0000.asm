.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, esi
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], 37
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
xor cl, al
sub cl, bl
xor dl, bl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
