.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and dl, bl
jmp .bb_0.1
.bb_0.1:
xchg edx, ecx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and al, -68
or ax, -10161
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
