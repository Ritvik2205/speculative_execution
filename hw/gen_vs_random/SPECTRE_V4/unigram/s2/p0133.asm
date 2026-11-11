.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, -124
add cl, 66
imul rdx, rdi
sub rcx, 25
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 35
xor dx, 59
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 47
add bl, 65 # instrumentation
cmovnp dx, ax
mov esi, eax
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], esi
add al, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
cmovnbe rbx, rcx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 20
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
dec dx
mul rbx
and rdi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdi]
cmovnle edi, edx
sbb eax, -1688332460
btc cx, 240
imul ecx, eax, 82
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 22
adc esi, 90
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rsi]
movsx rdi, dx
cmp dl, 65
cmovnbe rsi, rdx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
add dl, dl
movzx ecx, sil
sbb dil, al
bts esi, esi
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], ax
xor ax, si
cmp esi, 26
movzx rbx, dl
not dl
add sil, 110
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 30
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 47
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 82
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
