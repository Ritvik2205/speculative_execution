.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
add dl, 47
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
or eax, 1276549484
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
lea cx, qword ptr [rbx]
mov dl, al
sbb dil, dl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
