.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, al
lea rdx, qword ptr [rax + rbx]
sub rax, 788906357
mov si, 20858
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
xor bl, -116
add bl, 91
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
sbb bl, sil
add dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
lea ecx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
bt rdi, rax
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
