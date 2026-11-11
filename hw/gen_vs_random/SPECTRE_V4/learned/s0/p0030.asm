.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
cmp rdx, -49
add al, -1
xor al, dl
adc edx, -125
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
xor dl, dil
dec dil
add al, bl
bt dx, bx
xor rdi, -72
adc edi, -83
xor ax, 13329
xor al, dl
cmovno esi, edi
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
or rax, 185991441
neg dil
xchg edi, ebx
mov bl, cl
and bl, -60
sbb cx, 106
cmp rax, -1547540200
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
sbb dil, 47
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
