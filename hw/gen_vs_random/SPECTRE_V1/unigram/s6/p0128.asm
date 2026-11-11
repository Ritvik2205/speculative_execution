.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
inc al
or dx, 12
bt ebx, 45
lea ebx, qword ptr [rcx + rcx + 43124]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 96
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, cl
test sil, 47
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
add dl, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
