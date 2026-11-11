.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
cmovns cx, bx
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
test dil, al
or di, 0b1000000000000000 # instrumentation
bsr di, di
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
cmovbe rax, rbx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rsi]
cmovnp ebx, edi
btr eax, eax
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
mov dl, 81
cmovnbe rax, rdi
neg rdx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
cmovnb di, ax
add cl, al
adc al, -117
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
cmovbe ebx, ecx
bswap ebx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
xor di, 52
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
xchg al, bl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
and si, -74
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
sub edi, 38
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 17
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
cmovnle rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
