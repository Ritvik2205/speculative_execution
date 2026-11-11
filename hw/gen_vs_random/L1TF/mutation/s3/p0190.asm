.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, dil
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
cmovle si, bx
cmp edx, edi
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
setnbe cl
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
mov al, al
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
lea rdx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
sbb edi, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
