.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 26
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and al, cl
or ax, -20176
and cl, dil
xor edi, 85
jmp .bb_0.1
.bb_0.1:
and cl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
bt bx, di
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
test edx, -372470678
or ax, 127
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
