.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
mov bl, 35
sub bx, 12
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
cmp sil, bl
test ecx, ebx
jmp .bb_0.1
.bb_0.1:
imul bl
sbb si, bx
btr rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
btr rax, 85
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
