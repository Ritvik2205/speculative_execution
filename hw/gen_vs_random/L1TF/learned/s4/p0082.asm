.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
cmovno si, cx
and rax, 1163013815
and al, -68
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
lea rsi, qword ptr [rcx + rax + 19]
cmp al, 56
not sil
or ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
