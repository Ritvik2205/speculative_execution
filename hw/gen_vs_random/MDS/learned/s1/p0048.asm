.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
btr di, 199
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or eax, -1827868798
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
test al, al
btc rdi, rcx
cmovp esi, edi
test cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
add dl, 31 # instrumentation
cmovnl si, si
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and eax, -872608366
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
cmovp edi, esi
sub esi, 47
not cx
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 17
btc ebx, 89
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
add dl, -99 # instrumentation
not eax
cmovle rdx, rax
xchg edx, edi
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
and sil, -94
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
adc sil, al
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
test dil, -72
cmovs di, di
sub rdx, 21
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
cmp cl, cl
cmovp esi, eax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
bt ebx, 107
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
