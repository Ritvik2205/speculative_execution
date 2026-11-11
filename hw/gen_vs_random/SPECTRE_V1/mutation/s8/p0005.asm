.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 4
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
add rax, -704585563
add al, 3
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, 124
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
lea esi, qword ptr [rdx + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
or eax, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
