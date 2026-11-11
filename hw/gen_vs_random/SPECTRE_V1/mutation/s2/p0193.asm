.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
test rdi, 1238697264
sets cl
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
xor al, 86
adc bl, bl
neg ax
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
movsx ax, al
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], -75
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
setnz dil
adc si, -95
jmp .bb_0.2
.bb_0.2:
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
add cl, 22 # instrumentation
cmovns rbx, rsi
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
lea ax, qword ptr [rsi + rdx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
