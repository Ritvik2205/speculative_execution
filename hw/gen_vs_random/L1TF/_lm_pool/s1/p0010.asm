.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 69
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add al, -46
and cl, 90
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
cmovb di, cx
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
or al, dl
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
