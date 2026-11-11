.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
lea rax, qword ptr [rsi + rcx + 2]
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
setb al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
xor ebx, 10
xor ebx, 5
and bl, bl
cmp rax, -1365488374
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test ax, -30637
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
