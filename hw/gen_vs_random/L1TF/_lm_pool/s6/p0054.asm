.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
xor bl, -5
xor sil, 64
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
sbb al, sil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
