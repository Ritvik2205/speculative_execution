.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, dl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 79
or dx, 85
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
add bl, -6 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
cmovnbe si, di
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, cl
setbe bl
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
cmp bl, bl
bt bx, 27
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
or di, 0b1000000000000000 # instrumentation
bsf si, di
or bl, bl
add sil, -42 # instrumentation
lea edx, qword ptr [rsi]
sub ecx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
