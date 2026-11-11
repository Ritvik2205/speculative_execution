.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not ax
bt ebx, edx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 98
xor al, al
neg bl
neg eax
add cl, 122 # instrumentation
cmovz rbx, rdx
cmovz edx, esi
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 99
or dl, 56
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sub sil, sil
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
adc sil, 18
adc dil, al
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
cmovle bx, bx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 77
and dl, 67
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 61
cmovnbe rcx, rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
cmp rdx, 88
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
sub edx, esi
cmp bl, 13
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and ax, 35
sbb bx, 82
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
cmovnbe rcx, rdx
btc rsi, rax
test cl, -89
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ebx
cmovnle cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
mov rdi, 86
sbb eax, -1688332460
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
xchg rdx, rbx
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 4
cmovb ecx, ebx
btc dx, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
