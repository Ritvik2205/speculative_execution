.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and bl, -43
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
sub rax, -1628299544
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
mov al, dl
test sil, dl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 35
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
