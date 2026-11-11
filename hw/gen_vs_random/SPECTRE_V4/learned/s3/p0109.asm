.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
adc cl, -85
cmp al, -116
cmp al, -78
cmovz edi, eax
adc cl, -4
mov sil, cl
cmp bl, cl
sbb cl, 127
xchg esi, eax
sub cl, -127
cmp cl, 107
adc dl, sil
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
adc dil, 124
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
add eax, -1628652110
cmp al, bl
add dl, 109
cmp cl, 59
imul rax, rcx, 27
xor ax, 15671
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
add al, 40
or cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
