.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rbx]
bts esi, esi
test bl, cl
btc rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmovnle dx, dx
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
jmp .bb_0.1
.bb_0.1:
or ecx, 67
or sil, -78
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
cmovp rbx, rsi
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
or cl, dl
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
test eax, esi
and cl, -103 # instrumentation
cmovbe cx, cx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
