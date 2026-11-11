.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
add rax, -704585563
add al, -65
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 4
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and bl, 87
or eax, 1276549484
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
lea esi, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
sbb dl, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
imul edx
dec sil
lea rsi, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
