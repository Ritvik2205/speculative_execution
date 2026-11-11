.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
mov sil, al
add dil, sil
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
xor al, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
test sil, 13
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 96
movzx eax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
