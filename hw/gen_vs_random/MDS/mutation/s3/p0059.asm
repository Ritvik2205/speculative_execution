.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
or ax, -11837
btr rsi, 146
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor dil, -70
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
not al
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
jmp .bb_0.1
.bb_0.1:
test cl, bl
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and ax, 31082
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
btc rcx, rsi
and dl, dl
not rsi
jmp .bb_0.2
.bb_0.2:
and cl, 84 # instrumentation
cmovbe cx, ax
cmovns cx, bx
bt rbx, rbx
and dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
cmovo rax, rax
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and cl, -44 # instrumentation
cmovno rdi, rbx
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
or dl, cl
bt eax, 28
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
or bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 79
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
