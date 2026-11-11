.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 82
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 92
cmovnp ax, ax
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 64
add dx, -90
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
xor cl, -85
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
test dl, bl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
cmp bx, ax
and al, -36
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
sub dil, dil
movzx cx, dil
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
imul bl
add rdi, -94
and ecx, 48
add cl, dl
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 42
sbb ebx, eax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
add dl, 31 # instrumentation
cmovnl cx, cx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 31
imul eax, edi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 64
cmp di, 1
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rcx]
test cl, -89
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
imul bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
adc sil, bl
xor cx, si
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
bts edx, edx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 44
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
