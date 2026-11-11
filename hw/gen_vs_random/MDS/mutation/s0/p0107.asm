.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -4
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
bts rdi, 130
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
test al, 66
and al, 75
bt dx, 162
bts edx, 189
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
btc bx, 58
xor al, -26
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
xor rax, -345061362
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
