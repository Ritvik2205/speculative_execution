.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
add dil, -7
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rcx]
test al, -32
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rcx + rbx + 64]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
test cl, dil
jmp .bb_0.3
.bb_0.3:
jl .bb_0.4
jmp .exit_0
.bb_0.4:
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
