.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 1
test al, -126
sub cl, -21
test al, -99
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
lea rcx, qword ptr [rbx + rsi + 40]
xor eax, -1721938664
xor dl, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
add ax, 8031
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
