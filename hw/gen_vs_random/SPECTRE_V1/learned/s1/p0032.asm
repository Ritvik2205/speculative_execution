.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
or al, 100
xor dl, bl
adc al, -82
dec cl
lea di, qword ptr [rsi]
sbb cl, sil
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
add eax, 1518653812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
