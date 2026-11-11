.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
imul rsi
imul sil
dec al
btc dx, ax
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 46
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and al, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
add bl, 56 # instrumentation
cmovle rax, rbx
xor cx, 53
xchg bx, di
test rbx, 53
cmovnbe ax, si
or al, dil
test al, bl
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
cmovnp rax, rdx
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
movsx eax, dl
xor sil, bl
cmovz edi, edx
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 77
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
xor sil, 56
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
test dl, 19
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
xor dx, si
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
xor di, -43
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
cmovo rcx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
cmp cl, 48
cmovnbe rax, rbx
sub eax, edx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 13
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
adc esi, 90
cmovnl bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
