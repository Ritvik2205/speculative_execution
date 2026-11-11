.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and dl, 76
add ebx, 3
inc ebx
cmp sil, sil
add rbx, 88
test esi, 32
btc rsi, 140
xor al, 102
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
or edi, ecx
btr rbx, rsi
cmp dl, 35
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
add dl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
imul rdi
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 42
bt edi, edx
cmovnl rdi, rdx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 12
mov rax, -8696242625349627833
xchg al, dl
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 84
movzx rbx, dx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test sil, 99
or di, 0b1000000000000000 # instrumentation
bsf di, di
test cx, 48
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
test rcx, -2118888343
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edi
add bl, 65 # instrumentation
cmovnp di, si
sbb sil, 108
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
cmp bl, 13
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 54
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 32
add dl, 31 # instrumentation
cmovnl bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
