.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ecx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
cmp ecx, 13
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
cmovnbe ecx, edi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
add ebx, -57
movsx esi, bl
btc rax, rdx
and dil, -120
xchg dil, sil
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
cmp rdx, -49
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
add bl, dil
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
cmovnle bx, bx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
sub eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
sub sil, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
sub ecx, -107
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
xchg cl, cl
add eax, 544045319
sbb sil, -124
and eax, -2001076187
and bx, ax
xchg ebx, edx
cmovp ecx, edi
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
adc al, 116
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
dec sil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
