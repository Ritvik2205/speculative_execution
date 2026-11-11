.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 65
xor bl, -88
test al, dl
xor cl, dl
bt ax, bx
test edi, -1252846009
xor dil, dl
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 24
xor bl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
not cl
test ax, 18697
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
