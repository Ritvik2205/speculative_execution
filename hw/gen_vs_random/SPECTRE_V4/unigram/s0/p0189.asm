.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
add bl, 38 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
sub rbx, 52
mul rbx
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 31
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
sub esi, 21
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovle edi, ecx
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 63
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 79
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 91
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
xor sil, 56
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], di
xor dl, al
test bl, cl
add bl, al
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 73
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
add ebx, 3
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
btc ax, bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
not rdx
cmovle rcx, rax
test edi, -1249897727
add dl, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
add bl, -72
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 90
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], di
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
mov dl, dl
inc bx
add dl, -102 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
add edx, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
