.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ebx, 1263899340
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
cmp bl, dl
test rsi, 97
sbb sil, 108
add cl, 32
cmp ax, -15031
add dil, dil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rcx]
sbb sil, dil
sbb sil, 108
and rbx, 110
not bx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 42
cmovb ebx, ecx
mul cl
sub di, bx
xchg rdx, rcx
test edx, 573099753
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
inc edx
test sil, sil
cmovs edi, ebx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
add cl, -117 # instrumentation
cmovs rcx, rdx
sub bl, sil
xor ax, 28088
imul si, bx
and cl, 58
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
sub rbx, rsi
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
adc sil, al
xchg cx, di
add cl, 8 # instrumentation
adc al, bl
sbb al, -62
imul cl
test dl, dil
xchg edx, eax
test al, 80
or di, ax
mul cl
cmovp rcx, rsi
mov rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
