.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
cmovle eax, ecx
cmovz di, ax
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovnb dx, cx
cmovnbe di, si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 20
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
test sil, sil
or dil, -52
jmp .bb_0.1
.bb_0.1:
test rdx, -1624442902
and rax, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rax]
and sil, 65
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
or rcx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
