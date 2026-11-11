.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, di
xor rdi, -80
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
dec ecx
xor rdi, -80
jmp .bb_0.1
.bb_0.1:
cmovnbe ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
