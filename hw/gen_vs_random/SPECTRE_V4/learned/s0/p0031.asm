.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, -58
not ecx
xor cl, bl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb si, 89
test bl, dl
add bl, bl
cmovbe bx, bx
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, eax
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
imul ax, di, 33
sub esi, 39
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
or ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
not si
cmovp rdi, rsi
or bx, dx
and si, 68
not sil
cmovb rdx, rax
imul esi, edx
mov dil, -118
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 57
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
cmp rax, 2115020203
cmovl rdi, rcx
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
