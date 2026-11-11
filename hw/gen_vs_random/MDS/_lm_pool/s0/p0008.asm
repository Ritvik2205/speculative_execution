.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -97
xor rsi, -117
and sil, -56
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
xor si, 80
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test bl, cl
and edi, 23
or al, 25
not dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or rax, 1461812833
or dil, -78
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
