.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
add cl, -119 # instrumentation
adc cl, al
movsx ax, bl
xor rcx, 74
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 52
cmp esi, 43
add sil, 103 # instrumentation
cmovno ebx, esi
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 12
add dl, -73 # instrumentation
btr bx, cx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
add bl, 13 # instrumentation
setns bl
xor dil, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
