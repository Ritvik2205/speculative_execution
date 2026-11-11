.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
or cl, 10
or al, cl
cmovle esi, ebx
btr rax, rax
and cl, -109 # instrumentation
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
xor edi, 38
cmovnl rdx, rdx
jmp .bb_0.1
.bb_0.1:
add dx, si
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
xor ax, 2053
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 16
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 74
btr bx, dx
xor bx, cx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
