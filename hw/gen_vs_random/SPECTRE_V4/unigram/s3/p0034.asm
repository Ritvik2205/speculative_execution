.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
mul dil
cmovnl di, bx
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
add dl, 56 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 50
cmp bl, 12
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
xor di, 84
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
add bl, 126 # instrumentation
cmovb edi, edx
xchg ax, ax
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
or bl, 80
btr rdi, 61
mov eax, ebx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovo dx, bx
movsx eax, sil
mul dil
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
sub ecx, -107
and eax, -1145483375
cmovnp edi, esi
mov al, al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
adc bl, dl
adc rcx, -99
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovnz rcx, rax
movzx ax, dl
bt ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 20
and sil, sil
cmovnb rbx, rax
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
