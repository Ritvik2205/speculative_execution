.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 28666
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 91
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
movsx rsi, bl
lea bx, qword ptr [rcx + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdx]
cmovnbe edx, eax
dec si
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
sub edi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
cmovnb edi, esi
xchg bl, al
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
dec dl
sub cl, -74
cmovo rcx, rcx
cmovb edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
