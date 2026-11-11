.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
cmovl edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
cmovbe dx, ax
bts edx, 189
or sil, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
btr edi, edx
test rsi, 20
and cl, -85 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
cmovnb rdi, rdx
cmovnbe bx, di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
btc rax, 59
xor dl, -43
and cl, -76 # instrumentation
cmovl di, cx
cmovb di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
