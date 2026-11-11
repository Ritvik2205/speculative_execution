.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
cmovle si, cx
test al, 66
or al, -58
or al, -58
xor rdx, -59
bt di, si
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
or cl, al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
test dil, bl
or dil, dil
or sil, -78
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
xor rax, -404206377
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
