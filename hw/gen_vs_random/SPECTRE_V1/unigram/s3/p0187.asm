.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
lea cx, qword ptr [rax + rax + 48724]
cmovnbe rcx, rdx
and cx, 67
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
xor bl, -38
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
inc sil
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], 81
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
