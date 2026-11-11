.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
or al, 16
and rsi, 74
and ax, 19224
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
or al, dil
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
or ax, -7150
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
or al, -75
bt edi, esi
test bl, 65
xor edi, 13
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
