.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
test rdi, 42
or sil, bl
and rdx, 49
bts ecx, 184
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and rdx, 21
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or dil, -78
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
xor rbx, 89
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
