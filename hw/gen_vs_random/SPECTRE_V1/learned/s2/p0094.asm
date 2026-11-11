.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and al, cl
sbb bl, dil
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
add al, -65
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 19
and sil, 111
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test rcx, -1420345926
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
