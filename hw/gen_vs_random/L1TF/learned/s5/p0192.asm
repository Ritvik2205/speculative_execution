.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 71
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 42
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
or al, -5
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
not cx
and rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
