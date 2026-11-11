.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
setp bl
setnb cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
mul rcx
adc esi, -39
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, dl
movzx rdi, dx
bswap rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
