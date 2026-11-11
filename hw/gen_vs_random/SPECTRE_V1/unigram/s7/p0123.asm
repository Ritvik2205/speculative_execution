.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 32
add ecx, 26
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
add ax, cx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 67
add al, -72
sub dil, -32
test rdi, rdx
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and dl, cl
sbb rdi, 16
cmovno ax, ax
and rdx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
