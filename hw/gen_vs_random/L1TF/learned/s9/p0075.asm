.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 84
add al, 74
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
xor rdi, -80
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xchg bl, dl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmp dl, -93
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
