.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rax, 977059290
add al, -72
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and bl, -43
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
or eax, 1276549484
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
lea esi, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
