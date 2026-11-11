.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
add dl, -105 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
or dl, al
setb al
or cl, dl
jnb .bb_0.2
jmp .exit_0
.bb_0.2:
xor rsi, -124
sub esi, -120
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], edx
and sil, 14
cmovl edx, ecx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
xchg si, cx
cmovo ebx, edi
xor ebx, 77
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
