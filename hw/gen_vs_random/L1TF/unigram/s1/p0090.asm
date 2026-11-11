.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 97
test bx, 61
adc ebx, ebx
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
lea ebx, qword ptr [rbx + rsi + 57]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
sub dil, 87
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
add bl, 104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
cmp di, 45
add al, 109 # instrumentation
adc ax, 100
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
