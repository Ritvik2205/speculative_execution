.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts di, 72
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
dec sil
cmp si, 109
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
sub rdi, 105
cmovle rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
xor al, cl
sub dil, dil
btc rcx, 22
cmovno rbx, rdi
mov edx, ebx
mov edx, -950755477
imul bl
cmp bx, 113
add al, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 51
bt eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
sbb cx, 106
bt bx, 47
test dil, -26
sbb bl, dl
sbb sil, cl
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 24
mov sil, cl
xor al, -6
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rcx], si
sub dx, -12
and rdx, 0b1111111111111 # instrumentation
test cx, 59
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ecx
sbb si, 78
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
adc ax, 25365
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
add al, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 23
add di, ax
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 0
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rcx]
cmp si, ax
and cl, bl
mov dil, cl
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 82
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
