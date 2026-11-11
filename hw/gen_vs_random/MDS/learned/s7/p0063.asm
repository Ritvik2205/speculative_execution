.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rcx, -63
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
jmp .bb_0.1
.bb_0.1:
and dl, -73
xor bl, -61
or al, -17
test al, -81
jmp .bb_0.2
.bb_0.2:
or dl, -97
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and edi, 23
or bl, bl
test al, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
