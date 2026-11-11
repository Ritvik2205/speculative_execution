.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -17
or sil, -78
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rax, -2039117613
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or rax, -1561934807
or sil, dil
jmp .bb_0.1
.bb_0.1:
test dil, dl
or al, -61
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 24
jmp .bb_0.2
.bb_0.2:
or al, bl
xor cl, bl
xor sil, -15
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
