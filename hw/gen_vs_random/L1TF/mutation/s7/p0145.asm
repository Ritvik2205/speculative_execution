.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, al
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
sbb edi, 10
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
add dl, dil
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
cmovle si, bx
setnbe cl
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
lea rdx, qword ptr [rsi]
cmp edx, edi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
