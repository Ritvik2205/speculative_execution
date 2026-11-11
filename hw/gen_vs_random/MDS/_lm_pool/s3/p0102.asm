.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 17
not sil
or al, 37
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
xor cl, 98
xor al, cl
test eax, 1729060510
xor al, dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or ax, -7150
jmp .bb_0.1
.bb_0.1:
xor rbx, 89
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
test ecx, -1843375753
test dl, cl
and al, 14
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 16
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
