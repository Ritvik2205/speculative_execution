.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 74
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
dec di
bt eax, ebx
add dl, sil
test di, bx
add rcx, rsi
test dil, dil
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
dec edi
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
add bl, bl
add dl, dl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 36
neg cx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 36
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
test dx, 74
btc rdi, rbx
cmovnp edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
cmovnb si, si
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 64
xor dl, bl
test bl, 0
add cl, bl
btc rdi, 167
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmovns rbx, rsi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
test ebx, 1263899340
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
lea edx, qword ptr [rax + rcx + 43]
and esi, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
