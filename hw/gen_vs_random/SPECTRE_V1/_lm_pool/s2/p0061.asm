.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, ax
cmp ecx, 9
lea rbx, qword ptr [rcx + rax + 45]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
xor bl, -38
xchg al, dl
cmp edx, 44
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
