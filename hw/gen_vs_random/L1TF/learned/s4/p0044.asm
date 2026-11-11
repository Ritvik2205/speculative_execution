.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
test sil, bl
test ax, 13879
adc dil, 120
jmp .bb_0.2
.bb_0.2:
imul ecx, edx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
jmp .bb_0.3
.bb_0.3:
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
