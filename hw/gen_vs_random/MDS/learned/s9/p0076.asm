.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
test al, 127
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or dl, dl
bts eax, 222
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and bx, 30
test cl, -86
and rsi, 24
test ecx, -1843375753
test edi, -1252846009
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
