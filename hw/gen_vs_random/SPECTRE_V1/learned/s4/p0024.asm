.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 86
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
test sil, 13
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or ecx, 91
test sil, 97
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
lea bx, qword ptr [rax]
and al, -23
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
