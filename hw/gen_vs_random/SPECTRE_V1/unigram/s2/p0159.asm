.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rbx, 68
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
add sil, 32 # instrumentation
sbb cl, sil
btr edx, 42
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
setnz sil
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
movzx si, al
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
imul al
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
imul bl
sub rsi, 121
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
