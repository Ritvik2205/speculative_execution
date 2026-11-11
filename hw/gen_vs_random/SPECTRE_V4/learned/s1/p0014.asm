.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15409
test ax, -5170
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
sub al, 50
sbb rax, 183833426
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add esi, -5
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
setl bl
sbb dl, dil
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 71
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
sub ebx, eax
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 17
xor al, 29
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
sub cl, cl
cmovnb rdx, rcx
sub cl, -74
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rdi, rcx
adc bx, -89
adc dl, dl
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor al, 29
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
imul cl
not si
test bl, 24
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 74
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
not edi
sub dl, dl
sub ecx, esi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
cmovnp rbx, rdx
inc edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
and eax, -37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
