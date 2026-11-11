.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
add dl, dil
sbb edi, 10
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
cmp edx, edi
lea rdx, qword ptr [rsi]
cmovle si, bx
xor dl, cl
mov al, al
setnbe cl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
