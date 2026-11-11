.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, 24404
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
inc eax
sub rbx, -11
and rax, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rax]
sub al, dl
movzx eax, al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
dec rbx
lea rbx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
add dl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
cmovp si, si
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
