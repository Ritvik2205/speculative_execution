.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 56
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
add cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
btr dx, bx
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
setl al
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 69
add bl, 92 # instrumentation
sets sil
setz bl
imul bx, si, -58
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
