.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
xor rsi, -117
and al, -55
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 44
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
or rax, -141551502
or al, dl
test sil, -96
or ax, -7150
test edx, -1561252782
or rdi, 21
jmp .bb_0.2
.bb_0.2:
and esi, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
