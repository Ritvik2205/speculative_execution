.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -23364
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and al, dil
xor dl, 8
or dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
test rdx, 98
jmp .bb_0.4
.bb_0.4:
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
