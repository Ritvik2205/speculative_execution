.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
mov cl, al
and edx, 10
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and cl, cl
mov dil, dl
mov dl, sil
adc bl, al
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
adc dl, dil
sub rcx, 126
sub al, cl
test ebx, 65
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
cmp dl, cl
sbb dl, al
and al, sil
or dl, al
cmp al, dil
dec dil
adc ebx, 66
adc cl, -86
cmp dil, bl
add dil, bl
cmp cl, dil
or al, -19
xchg rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
sub ecx, -107
xor ax, -17712
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
