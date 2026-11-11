.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -93
or rax, -263404965
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], cl
bt di, di
add cl, 121 # instrumentation
cmovs ebx, ebx
add dil, 40 # instrumentation
cmovp rax, rdi
add bl, -19 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
add al, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 24
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
