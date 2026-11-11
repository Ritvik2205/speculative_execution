.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rcx
cmovnle si, si
sub rax, -701741274
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rbx]
add dl, 41
and dil, dl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
test edi, -1249897727
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 12
or cl, 54
cmovnp ax, ax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 95
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb cl, 20
mov rdi, rcx
add rbx, rax
cmovp bx, dx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
and eax, -24
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
neg bl
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
btc rax, rdi
and sil, al
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovp edx, eax
cmp rdi, 65
dec al
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
movsx esi, bx
sbb rax, 183833426
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
movzx ax, cl
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
xor rax, rbx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
or si, dx
btr rdi, rdx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
dec rsi
imul rdi
sub dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
