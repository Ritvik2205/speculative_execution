.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 35
and dx, 60
xor cl, 55
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
xor cl, dil
or al, cl
test esi, 1857129931
xor al, 55
test al, 127
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
