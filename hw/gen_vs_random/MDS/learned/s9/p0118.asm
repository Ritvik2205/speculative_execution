.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ebx
or al, -17
and dil, 125
bt dx, ax
jmp .bb_0.2
.bb_0.2:
test dil, dl
or sil, dl
test dil, dil
and dl, al
or dil, -78
or dl, bl
bts rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
