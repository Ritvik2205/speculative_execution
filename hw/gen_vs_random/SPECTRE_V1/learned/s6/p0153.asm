.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
setnb sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
lea si, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
add sil, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
sub al, dl
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
or sil, cl
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
