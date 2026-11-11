.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 51
test al, 66
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
bts ax, dx
cmovo rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
cmovb rcx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
xor cl, dil
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
or al, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and dil, -99 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
