.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, 49
and cl, 8
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
cmovns edx, edx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and cl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], di
and bl, cl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 69
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 13
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
cmovbe bx, si
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and bl, 65
cmovnbe esi, eax
and bl, -30 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
and sil, sil
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
