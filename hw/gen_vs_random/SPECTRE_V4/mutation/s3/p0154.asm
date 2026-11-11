.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 27239
inc rsi
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
neg rdi
adc cl, al
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
test al, dil
and rdi, 45
imul esi, edx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
test dl, 114
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
add rsi, 68
mov cl, bl
test rbx, 1219566903
or si, 85
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
cmp dx, di
cmovp di, di
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
cmovs rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
mul cl
movzx ax, cl
imul bl
add al, 116 # instrumentation
cmovns ebx, esi
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmp rax, 2096656187
sub rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
adc al, dl
mul ecx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor eax, 365940537
or ax, 27604
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
add cl, -122 # instrumentation
cmovp bx, bx
sbb al, dl
bt ecx, 177
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
