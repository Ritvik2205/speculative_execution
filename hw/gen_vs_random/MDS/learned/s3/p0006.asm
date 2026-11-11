.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, dx
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 7
test di, 22
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and di, dx
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
or dl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and cl, -26 # instrumentation
cmovnp rax, rcx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 35
or al, -48
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
or sil, -8
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
or si, 97
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
not eax
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
test bl, dil
mov rsi, rcx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 35
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, -21
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 81
xor al, -119
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 72
cmovp rcx, rdx
cmovnbe ax, cx
and bl, cl
and ax, -22368
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
cmp bl, bl
cmp ax, 42
test ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
cmovb rdx, rdi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 4
cmovb rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
