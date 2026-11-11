.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
xchg ecx, edx
lea cx, qword ptr [rax + rdi]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
cmp cx, 43
jmp .bb_0.5
.bb_0.5:
lea rsi, qword ptr [rcx + rdx + 43352]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
