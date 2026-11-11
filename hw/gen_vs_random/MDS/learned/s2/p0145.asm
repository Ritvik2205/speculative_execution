.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
or rcx, 54
xor al, 8
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or rax, -1523798580
and ax, 27170
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xor cl, 83
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and al, 82
and sil, -9
test dl, -119
and eax, 33
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
