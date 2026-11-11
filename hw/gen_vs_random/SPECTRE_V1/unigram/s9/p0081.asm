.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rcx
imul dl
cmovbe dx, di
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
lea bx, qword ptr [rdi + rsi]
lea bx, qword ptr [rbx + rbx]
sub cl, bl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 110 # instrumentation
cmovb rax, rbx
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
setnb sil
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
