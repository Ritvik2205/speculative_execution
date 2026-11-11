.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and bl, 26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
cmovz eax, ebx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and al, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
cmovnz dx, dx
cmovno rbx, rsi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
test bx, 4954
jmp .bb_0.1
.bb_0.1:
bts dx, cx
test esi, 425331143
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 6
btr rbx, 63
and dl, -40 # instrumentation
cmovp edx, edx
jmp .bb_0.2
.bb_0.2:
and al, 39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and bl, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
bts rbx, 115
bt si, cx
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
cmovo rbx, rbx
or dil, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
test dl, -85
or bx, dx
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
