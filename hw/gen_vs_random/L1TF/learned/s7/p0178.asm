.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 89
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and ax, 37
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovb rdi, rdx
jmp .bb_0.1
.bb_0.1:
test al, -104
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
jmp .bb_0.2
.bb_0.2:
and edi, 76
jl .bb_0.3
jmp .exit_0
.bb_0.3:
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
