.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 5001
bts rax, rsi
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor cx, -18
jmp .bb_0.1
.bb_0.1:
xor di, 40
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and dl, bl
or dil, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
test eax, -571234566
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
