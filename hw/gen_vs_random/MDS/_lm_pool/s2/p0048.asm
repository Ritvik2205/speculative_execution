.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
and rsi, 14
bts rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and ax, 29207
xor cl, dil
or cx, 49
and al, 82
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
test al, cl
or bl, -125
xor cl, bl
and rax, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
