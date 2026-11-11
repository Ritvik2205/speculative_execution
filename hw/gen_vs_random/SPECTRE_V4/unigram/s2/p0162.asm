.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 89
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
movzx eax, sil
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
not dx
movzx edx, al
btc di, 58
cmovnl rax, rdi
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 28
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
add al, bl
add al, 118
add cl, al
cmovz ecx, ecx
bt ecx, 71
cmovnbe rdx, rbx
sbb bl, cl
and al, bl
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 57
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 15
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
imul ebx, eax, 69
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
dec rax
bts ebx, 22
cmovnl rsi, rsi
xor bl, dil
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
cmovo si, di
add bx, 110
movzx di, cl
cmovnb esi, edx
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
movsx ecx, dil
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 27
sbb bl, bl
cmovnz ax, bx
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdx]
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
