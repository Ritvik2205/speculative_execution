.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
lea rcx, qword ptr [rbx]
setz sil
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and dl, dil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc ebx
cmp rcx, 79
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, 47
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
