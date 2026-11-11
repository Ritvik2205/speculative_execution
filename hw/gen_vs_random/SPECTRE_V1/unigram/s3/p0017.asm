.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea ecx, qword ptr [rbx + rsi + 56]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
adc rbx, rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor bl, al
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
and dl, -111
sub dil, dil
cmovo rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 47
and cl, -57
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
imul al
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
add sil, 2
neg rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
