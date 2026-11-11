.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
cmovb rax, rdi
bt si, ax
movzx dx, dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and cl, -3 # instrumentation
cmovnb cx, dx
or dl, dil
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
or sil, -8
and si, di
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 8
test al, 74
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
xor edx, 38
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
cmovnz ax, si
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
