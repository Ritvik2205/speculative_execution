.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -127
or al, bl
test bl, -9
or cl, al
jmp .bb_0.1
.bb_0.1:
test al, bl
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
or rcx, 54
and dl, -73
or rsi, 100
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and al, 106
test al, cl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or al, -58
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
