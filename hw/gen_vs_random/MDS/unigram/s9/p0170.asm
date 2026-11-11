.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and al, 67 # instrumentation
cmovl rcx, rsi
and bx, 19
test rax, -2052112368
xor edx, 17
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 87
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rbx]
not esi
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 73
xor rbx, 89
bt si, 23
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
