.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
xor dl, 64
or rax, 699028911
sbb edi, 10
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
cwde
lea rbx, qword ptr [rsi + rcx + 56]
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
