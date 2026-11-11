.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
cmovle rsi, rdx
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
movzx si, sil
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
sub ecx, 67
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
sub bl, dil
xor cl, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
