.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and al, bl
cmovnl ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
or al, 37
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
btr si, si
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
test cl, dil
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and sil, -69
btr cx, di
cmovnle di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
