.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -81
or al, bl
test bl, -114
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
or al, -75
test edi, -1252846009
xor bl, -27
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor cl, 15
jmp .bb_0.1
.bb_0.1:
test sil, -55
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and al, bl
not al
and bx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
