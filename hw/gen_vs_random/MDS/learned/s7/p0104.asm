.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test cl, 0
and rax, 1886208862
or cl, -36
test bl, 65
and eax, 366961170
test cl, sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test ebx, -2015966884
test al, dil
bt di, bx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
test al, 66
or ax, -6817
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
