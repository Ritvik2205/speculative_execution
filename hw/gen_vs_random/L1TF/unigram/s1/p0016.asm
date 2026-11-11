.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
test rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
mul rdi
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 64
add dl, 121 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
setnb bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
mov eax, 79
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
