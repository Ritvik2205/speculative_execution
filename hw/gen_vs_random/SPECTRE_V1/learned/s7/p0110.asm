.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 10
or al, 100
and cl, dl
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, -127
test sil, -31
or rax, -3
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
