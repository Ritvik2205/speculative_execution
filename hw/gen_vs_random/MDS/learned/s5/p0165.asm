.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and dx, 60
or al, cl
and dl, -73
xor rax, -404206377
or sil, -78
or rax, 302048971
and rax, -2039117613
and dil, 125
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
or dil, 12
and rax, -978188247
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
cmovno rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
