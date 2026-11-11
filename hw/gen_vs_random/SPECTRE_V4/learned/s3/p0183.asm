.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -120490246
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
add cl, -109 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 81
test eax, -818909344
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
add dl, dil
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
xor rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 41
cmovb ecx, esi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 64
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and dil, cl
movzx rax, sil
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
xor eax, -437098167
cmp rax, 1524061352
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
cmovnbe rax, rsi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
cmovnp rsi, rsi
add dl, -99 # instrumentation
not eax
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
lea ebx, qword ptr [rdx + rcx]
test rcx, -2118888343
movzx cx, dl
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
add bl, cl
test rax, -344032571
neg rsi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 9
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
cmp rax, -120490246
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
