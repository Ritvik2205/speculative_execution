.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rbx, rcx
test al, 84
xchg rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 76
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
lea di, qword ptr [rdx + rsi + 68]
test cl, -62
and sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
