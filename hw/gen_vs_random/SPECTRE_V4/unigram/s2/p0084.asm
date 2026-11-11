.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, 242
cmovle rsi, rdx
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
movzx rsi, bx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
or cl, dl
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
imul rsi, rax
add edi, eax
imul esi
cmp al, cl
xchg al, bl
test dx, cx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
btr rdi, 61
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 39
and cl, al
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
bswap edi
cmovnb ecx, eax
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdi
mov sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
inc eax
xor sil, 25
add al, 89 # instrumentation
cmovnle ax, di
and rdi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 100
and rdi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdi]
cmovo dx, di
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
add bl, 95 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
cmovns ax, cx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
bswap rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
