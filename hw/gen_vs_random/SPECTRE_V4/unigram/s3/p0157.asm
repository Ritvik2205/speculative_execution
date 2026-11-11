.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -74
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rax]
mov rdi, 49
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or al, bl
neg ebx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
add rcx, rax
xor al, 59
test cl, al
neg al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 64
test esi, 4
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
mov rsi, rbx
imul eax
add bl, bl
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdx]
sub dil, dl
imul cl
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
or ebx, edi
test eax, 1561062795
mul rbx
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
imul dx, cx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 30
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
cmp rdi, 39
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
mul ax
movzx eax, cl
dec dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
