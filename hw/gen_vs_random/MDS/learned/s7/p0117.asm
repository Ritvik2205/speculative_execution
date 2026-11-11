.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
test al, 91
btr ax, cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
xor cl, 15
and sil, 89
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
xor dil, sil
test al, bl
and cl, cl
and eax, 33
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and al, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
btr cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
