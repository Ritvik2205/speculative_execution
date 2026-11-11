.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
cmp rdi, 67
add bl, al
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 66
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
add al, -72
sbb eax, -108
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
