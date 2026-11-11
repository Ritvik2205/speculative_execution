.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor dil, -37
xor dil, -37
mov bl, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 80
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
