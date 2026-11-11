.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ecx, 72
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
sub bl, -6
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 42
cmovbe di, bx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 50
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
dec rcx
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmovo bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
