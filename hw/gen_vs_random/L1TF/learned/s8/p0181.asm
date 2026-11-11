.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 42
sbb al, cl
bts ebx, 57
xor bl, dl
lea di, qword ptr [rcx + rax]
lea rax, qword ptr [rcx + rbx]
jmp .bb_0.1
.bb_0.1:
test esi, ebx
test bl, 84
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
