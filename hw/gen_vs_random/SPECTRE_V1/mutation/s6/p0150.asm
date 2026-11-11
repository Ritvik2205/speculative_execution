.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
add rax, 913062684
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 1
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
add al, -13
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rdx + rbx]
sbb dl, cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and bl, 124
or eax, -1641258390
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
