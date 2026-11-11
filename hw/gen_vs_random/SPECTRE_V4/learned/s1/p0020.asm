.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 2
or al, sil
add rax, 114
test al, 57
test sil, 68
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
