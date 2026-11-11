.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xor sil, al
adc rax, 100
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 33
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
or bl, 43
or rdi, -11
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
not dl
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
