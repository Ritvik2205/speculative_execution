.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -104 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
xchg rdi, rdx
xor bl, dl
jmp .bb_0.1
.bb_0.1:
test bl, 45
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 81
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
