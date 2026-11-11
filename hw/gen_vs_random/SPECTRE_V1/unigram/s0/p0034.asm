.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, rbx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 16
sub rax, rdi
test ax, -32457
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
sub al, -66
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnz si, di
not ebx
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
bt eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
inc rdx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 36
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 98
xor dl, al
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
