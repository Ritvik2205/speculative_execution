.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 14
dec dl
and si, 57
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
sub al, -3
cmp cl, sil
test cx, 76
lea rbx, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
