.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 35
lea di, qword ptr [rdx + rbx + 53]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
cmovnp rdx, rcx
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
sbb bl, cl
btr rbx, 18
mul bl
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 58
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 98
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 17
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 72
or dl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
cmovnb ax, ax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
cmovnbe rax, rsi
btc cx, 240
not rsi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 55
cmovnz eax, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and esi, ebx
and si, 68
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
inc bx
test ebx, 1263899340
cmovs rax, rsi
and rdi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
