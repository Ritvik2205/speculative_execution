.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ecx, esi
test sil, 47
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, dl
test al, -99
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
