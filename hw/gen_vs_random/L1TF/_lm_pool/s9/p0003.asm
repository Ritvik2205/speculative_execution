.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, -49
cmovbe eax, edx
xchg al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
add sil, -61
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
