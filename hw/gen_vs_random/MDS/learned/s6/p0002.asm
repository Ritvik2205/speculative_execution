.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or al, dl
test eax, -675944960
and si, -121
btr ax, dx
and dl, -73
and rax, 498847670
jmp .bb_0.1
.bb_0.1:
test al, dl
or sil, cl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
test sil, bl
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
