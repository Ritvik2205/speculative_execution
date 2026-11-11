.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 82
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
add bl, cl
cmovs edi, esi
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
add edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
movzx ecx, cx
mul rbx
add cl, 106 # instrumentation
cmovnp rcx, rax
sbb dx, 52
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and al, -36
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 21
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
inc esi
add dl, 41
test cx, ax
dec rdi
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
imul cl
xor cl, -85
sbb rbx, 4
and cl, 58
bts rax, rsi
and al, -36
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
btr si, di
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
sub dil, -10
movzx edx, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
imul dx, cx, 11
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 50
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
add sil, -10 # instrumentation
cmovnbe esi, edx
mov rbx, 9101099553822202722
bswap rbx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
or ax, -15282
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
add dl, dl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
