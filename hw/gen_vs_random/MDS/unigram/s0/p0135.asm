.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
bt rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovl bx, dx
or sil, sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
test cl, dil
test cl, al
and rsi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and dil, cl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], edx
test dil, dil
or rbx, -72
or bl, -125
cmovp bx, cx
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
bts rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
