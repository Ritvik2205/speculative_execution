.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
sbb al, -23
sbb al, -4
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 98
xor bl, sil
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 37
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
