.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdi, rcx
mul rbx
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
add cl, cl
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
btc rbx, 52
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
imul rdi, rax, 33
add al, sil
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 13
sub rdi, rbx
add bl, 122 # instrumentation
cmovz cx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
movsx si, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
cmovz bx, ax
inc eax
and ecx, 71
cmovs cx, bx
movsx ax, sil
inc rdi
btr rcx, 134
btc edi, eax
dec cl
test bl, dl
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
xchg ax, cx
btr rcx, 134
and sil, -84
cmovnbe edi, ebx
or cx, 23
add si, 81
cmovnz cx, bx
add cl, -106 # instrumentation
cmovno rcx, rbx
movsx bx, dil
mov cx, -22668
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
cmovnb di, bx
cmp sil, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
