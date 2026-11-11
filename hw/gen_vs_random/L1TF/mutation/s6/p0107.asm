.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add dl, dil
sbb edi, 10
setnbe cl
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
mov al, al
lea rdx, qword ptr [rsi]
xor dl, cl
cmp edx, edi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
cmovle si, bx
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
