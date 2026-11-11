.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
mov cl, sil
inc bl
sbb eax, 125
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
sbb dl, sil
sbb bl, cl
add cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
