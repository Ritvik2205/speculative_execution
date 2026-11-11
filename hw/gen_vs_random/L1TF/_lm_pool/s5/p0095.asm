.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
sbb dil, cl
xor ebx, -81
and rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
jmp .bb_0.2
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
movsx edi, cl
and rsi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
