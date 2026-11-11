.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
test al, -70
add dl, 22
add al, -102
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and al, -68
test eax, 899472326
xor bl, al
lea rsi, qword ptr [rdi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
