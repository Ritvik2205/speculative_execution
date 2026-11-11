.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test dil, cl
and al, 82
test bl, -14
or dl, al
or rsi, 71
jmp .bb_0.1
.bb_0.1:
or bl, dil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or sil, dl
test dl, sil
or rax, 1461812833
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
