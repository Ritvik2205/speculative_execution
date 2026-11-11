.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
btc ax, 51
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor ax, -5889
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
test rcx, rax
or sil, -49
bt edi, ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
