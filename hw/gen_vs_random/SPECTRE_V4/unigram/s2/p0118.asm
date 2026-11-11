.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and bl, -63
mov rcx, 5862286138240743445
test bl, 24
adc ebx, 117
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 84
and cl, 58
cmovnle cx, si
mov rax, -8696242625349627833
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
xor bx, 99
cmovnp si, ax
add cl, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
cmovnbe rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 57
and al, -127
test di, 43
cmp rdi, 95
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
add bl, -72
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
sbb bx, 31
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 22
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
test dil, dl
xchg rax, rcx
add sil, 110 # instrumentation
movsx ax, sil
sbb rax, 183833426
cmovle rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
add dx, -90
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 97
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
inc edx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
movzx rax, si
cmovb eax, ecx
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
imul rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
xchg rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
