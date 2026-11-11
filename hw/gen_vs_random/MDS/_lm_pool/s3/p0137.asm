.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
xor bl, 67
or al, -61
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
xor rax, -1128378406
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
test bl, 65
bt dx, cx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
bts rcx, 1
or ax, -11837
bts bx, si
and ecx, -104
xor cl, 83
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
