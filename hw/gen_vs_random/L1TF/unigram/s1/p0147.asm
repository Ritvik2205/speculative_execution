.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rax, rsi
add dl, sil
xor sil, 64
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
lea ecx, qword ptr [rdi + rdi + 39]
sub rsi, rdi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
sbb ecx, ecx
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rcx + rdx]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
mul al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
add di, di
add al, -113 # instrumentation
mov rax, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
