.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb sil
lea eax, qword ptr [rdi]
sub ax, di
not sil
xor ax, 17976
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
lea rdx, qword ptr [rbx + rsi + 10]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], esi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
add dl, -126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
xor ax, 17976
mov sil, 81
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
