.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
cmp rax, 834498504
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
or al, -48
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle eax, edi
sub rax, -2089384489
test cl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
