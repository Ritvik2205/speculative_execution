.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test bl, cl
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test al, 15
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
