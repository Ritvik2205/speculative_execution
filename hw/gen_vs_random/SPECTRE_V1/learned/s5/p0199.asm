.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 69
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdx
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
cmp esi, 96
test al, 42
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
