.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
test eax, -2032743474
and cx, 127
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 59
xor al, dil
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb bl, al
and bl, 89
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
or dil, -113
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
