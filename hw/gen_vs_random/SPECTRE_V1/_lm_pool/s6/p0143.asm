.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
lea di, qword ptr [rsi]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and ax, 25351
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmp cx, 88
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
sub al, cl
add dl, 47
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
