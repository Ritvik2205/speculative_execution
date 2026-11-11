.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdx]
add cl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
cmp eax, 692647572
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 103
test eax, 525596342
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
cmovnz bx, ax
movzx cx, dil
adc rcx, 43
cmp rax, rdi
lea di, qword ptr [rcx + rdi + 1965]
bt edx, ebx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
or bx, 0b1000000000000000 # instrumentation
bsf cx, bx
jmp .bb_0.2
.bb_0.2:
add cl, 36 # instrumentation
sub rsi, rsi
lea rcx, qword ptr [rdi + rdi + 3798]
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
lea cx, qword ptr [rbx + rax]
and bl, al
sbb bl, cl
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
