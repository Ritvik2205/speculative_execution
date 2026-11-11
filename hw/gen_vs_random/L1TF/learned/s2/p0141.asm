.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
and dil, cl
lea di, qword ptr [rax]
cmovno di, ax
lea rsi, qword ptr [rdx + rcx + 31]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
xchg esi, edi
jmp .bb_0.2
.bb_0.2:
and cl, 80
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
