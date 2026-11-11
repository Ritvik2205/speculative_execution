.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul cx
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
cmovz ax, bx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
mul cx
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dil
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
dec di
not ax
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
cmovnle rdx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
cmp eax, -2073187604
bts di, si
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
add sil, sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and cl, dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
add cl, -75 # instrumentation
sbb eax, -676736552
or dil, dil
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
neg rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rdi
sbb al, 31
xchg cl, sil
sbb cl, 35
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
add cl, dl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dil
imul al
test bl, -91
xor di, 7
add sil, 71 # instrumentation
cmovnle rbx, rsi
xor si, cx
cmovl ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
