.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 74
xchg ecx, esi
movsx eax, sil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or dl, 8
jmp .bb_0.3
.bb_0.3:
and ax, 26813
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
