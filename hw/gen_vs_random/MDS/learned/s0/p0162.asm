.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdi, 26
and bl, 68
and esi, 69
and ax, -16061
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and bl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
xor dil, 124
test ebx, -961564216
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
