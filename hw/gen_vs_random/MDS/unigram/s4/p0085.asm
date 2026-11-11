.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, di
btr bx, bx
btc bx, 58
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
bt edi, 225
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and cl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and bl, 68
or dil, -78
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
