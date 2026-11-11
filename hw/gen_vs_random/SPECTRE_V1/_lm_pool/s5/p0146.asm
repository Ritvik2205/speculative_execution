.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb edi, esi
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 26
or rax, -3
js .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 10
sub al, -66
lea di, qword ptr [rsi + rbx]
sub rax, -1628299544
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
