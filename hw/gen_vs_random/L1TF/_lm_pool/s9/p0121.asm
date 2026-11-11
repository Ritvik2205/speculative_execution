.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dil, -126
jmp .bb_0.2
.bb_0.2:
jl .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea esi, qword ptr [rdx]
jmp .bb_0.4
.bb_0.4:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
sub cx, 58
jmp .bb_0.5
.bb_0.5:
test bl, -92
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
