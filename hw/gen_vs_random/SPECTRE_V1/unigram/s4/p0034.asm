.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb al
lea ecx, qword ptr [rcx + rsi + 89]
bt rdx, 54
setb al
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
mul si
imul ecx, ecx, 23
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
sub di, 48
mov dil, al
xor sil, -33
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
