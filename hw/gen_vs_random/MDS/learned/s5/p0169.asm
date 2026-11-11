.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test al, 127
test esi, 425331143
test al, cl
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and sil, dl
test al, 66
and cl, -71
or al, -17
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
test rdi, 13
test eax, 1838539683
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test sil, dl
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
