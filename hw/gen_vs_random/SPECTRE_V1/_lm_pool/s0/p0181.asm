.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
test al, -71
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
cmp rax, 1189904463
jl .bb_0.1
jmp .exit_0
.bb_0.1:
inc al
and dil, -93
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
btr edx, 166
and dl, -111
and cx, 97
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
