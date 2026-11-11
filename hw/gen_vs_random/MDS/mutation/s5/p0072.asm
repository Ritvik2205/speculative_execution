.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
or ax, -4210
btr rsi, 146
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor dil, 8
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
not al
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
jmp .bb_0.1
.bb_0.1:
test cl, bl
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and ax, 13090
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
btc rcx, rsi
and dl, dl
not rsi
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
cmovz ax, ax
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and bl, dl
cmovno ecx, eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and di, 91
or cx, -42
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
or dl, bl
and ax, di
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
test rsi, rsi
cmovp rdi, rax
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
and bl, 101 # instrumentation
cmovno esi, ebx
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
