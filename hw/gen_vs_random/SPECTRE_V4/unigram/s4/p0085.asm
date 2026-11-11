.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
or eax, esi
xor dl, cl
movzx bx, dil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
movzx ecx, al
cmovns cx, dx
btc si, ax
cmp bl, bl
cmp ax, -15409
adc sil, dl
cmovb eax, ebx
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
cmovb edx, eax
cmp dl, cl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
or ebx, 34
sbb eax, edx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
test rax, -331426050
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 67
sbb al, 123
mul esi
mov rdx, rcx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 77
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
sbb sil, al
add bl, -71 # instrumentation
adc bl, cl
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], 49
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 60
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
imul dx
not rdx
or dl, 88
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and dil, 96
sbb dl, dil
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
sub al, 99
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
