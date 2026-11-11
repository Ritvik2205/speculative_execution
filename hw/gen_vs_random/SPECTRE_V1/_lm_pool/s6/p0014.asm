.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dx
lea dx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
sub cx, 56
and al, -23
sbb al, -107
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
