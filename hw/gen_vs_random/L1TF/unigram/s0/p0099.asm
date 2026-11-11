.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, al
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
sbb cl, -11
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
dec bx
add al, -124 # instrumentation
setnz al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 30
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
xor cl, cl
cbw
and edi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
