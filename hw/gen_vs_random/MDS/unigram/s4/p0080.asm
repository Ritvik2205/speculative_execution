.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 76
cmovl rdx, rsi
or dx, si
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and dl, -7
or rdi, 67
and edi, 45
cmovnl edi, eax
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and bl, -13 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
or cl, 10
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 32
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
