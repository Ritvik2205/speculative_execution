.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
add rax, 114
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 31
adc sil, sil
mov dil, cl
sub cl, bl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
adc dil, cl
sub cx, -114
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
adc dl, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
