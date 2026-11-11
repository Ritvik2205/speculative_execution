.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and al, 49
test al, cl
xor bl, al
and bl, 68
btr bx, si
xor dx, 21
or dil, -41
or dil, cl
xor dl, -19
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
