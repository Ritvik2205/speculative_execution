.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add di, ax
cwd
lea edx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 10
setle dl
add cl, -93 # instrumentation
not rcx
sbb dl, 127
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
inc ebx
sbb ebx, 93
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
nop
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
mov rdi, 81
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
