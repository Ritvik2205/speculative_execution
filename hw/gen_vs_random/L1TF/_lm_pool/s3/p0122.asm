.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sub sil, -99
test dil, bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 61
or dl, bl
adc bx, 70
sbb eax, -1165635662
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
mov al, -101
lea rax, qword ptr [rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
