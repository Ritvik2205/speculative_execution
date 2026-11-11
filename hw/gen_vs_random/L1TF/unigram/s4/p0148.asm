.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bx, si
btr edx, ebx
lea ax, qword ptr [rdx + rcx + 32]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
cmovp esi, edx
bt bx, bx
cmp bl, 45
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
lea rsi, qword ptr [rbx + rax + 14]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add dl, 43 # instrumentation
adc dil, dil
dec si
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
setz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
