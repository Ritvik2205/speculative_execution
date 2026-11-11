.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
test cl, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
test al, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and al, -114
or al, -17
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
xor rsi, -117
btc dx, 146
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
