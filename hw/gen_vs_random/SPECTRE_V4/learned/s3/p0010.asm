.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 85
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
add eax, -1796699558
add dl, bl
or al, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 13
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 69
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
add bl, bl
xor al, 56
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bt rdx, 61
and rdi, -2
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], ax
sub dl, dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 93
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt ebx, esi
sbb bl, -94
imul cl
or bx, cx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 66
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
xor esi, eax
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
not si
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
cmovns rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
