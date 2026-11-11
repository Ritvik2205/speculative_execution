.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 106
cmovz rdx, rsi
test bl, -14
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 20
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
or rdx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and bl, 38 # instrumentation
cmovno rbx, rsi
and al, 20 # instrumentation
cmovp cx, si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
cmovbe cx, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
cmovp dx, bx
and al, -83 # instrumentation
cmovnp rcx, rbx
cmovnb rax, rsi
or rdi, 21
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
or cl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
