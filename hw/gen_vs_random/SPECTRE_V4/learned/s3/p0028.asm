.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdi, 28
and si, -74
cmovz eax, ecx
and ax, 26513
and rax, 37
xor bl, dl
test ecx, 860867711
cmp cl, 59
test dil, -26
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
test cl, -31
xor al, sil
adc dl, sil
sub cl, dil
cmp sil, dil
adc dl, dil
sub cl, bl
and dil, bl
cmp si, 109
xchg esi, ebx
or dil, 5
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
cmp dl, al
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
adc dil, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
