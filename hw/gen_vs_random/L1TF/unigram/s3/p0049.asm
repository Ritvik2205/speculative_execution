.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
mov al, cl
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
and al, bl
sub dl, 40
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rdx
lea ax, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
xchg dl, al
inc cl
add bl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
lea bx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
