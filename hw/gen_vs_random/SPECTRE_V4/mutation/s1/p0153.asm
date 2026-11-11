.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, 157
cmp eax, -92285311
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
sub dl, 43
btc cx, si
and cl, 58
imul rsi, rdi
add ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
test eax, 1880179600
cmp rax, 2115020203
sbb bl, bl
xor cl, -54
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
add cx, cx
xor cl, -101
btc rsi, 225
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
sbb eax, 4
cmp ax, -15409
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
add dl, 41
and eax, -37
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmovnb esi, edi
cmovns dx, di
cmovb di, di
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xchg rdx, rcx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
bt edi, ebx
test eax, ecx
mov rsi, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovle rax, rbx
sub al, 50
bts rsi, rsi
sbb cl, cl
or bx, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
