.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
test sil, 29
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
mov bl, dil
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], esi
cmp al, 27
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
