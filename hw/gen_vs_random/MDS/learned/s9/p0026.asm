.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
xor eax, 1640090871
xor rax, -270810088
and dil, al
or sil, -49
jmp .bb_0.1
.bb_0.1:
and al, -55
and al, dil
or cl, dl
or al, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
bt dx, cx
and al, 106
bt dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
