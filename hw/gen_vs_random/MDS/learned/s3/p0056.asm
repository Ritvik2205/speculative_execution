.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
or cx, 49
xor bl, dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor dil, cl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or al, -58
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and di, 99
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
xor cl, al
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
