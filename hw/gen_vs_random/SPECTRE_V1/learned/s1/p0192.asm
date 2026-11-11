.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
adc bl, -73
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
add al, 10
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub bl, dil
add al, dl
test dl, -36
sub dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
