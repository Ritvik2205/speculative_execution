.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 140
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmp rax, 1524061352
sub dl, 43
test eax, 1561062795
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
add dl, 41
xor cl, -101
cmovns dx, di
sbb eax, 4
or bx, -111
cmovnb esi, edi
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
cmovle rax, rbx
mov cl, cl
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
sub al, 119
cmp cl, dl
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
bt edi, ebx
mov rsi, rbx
add cx, cx
sbb bl, bl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
bts rsi, rsi
and cl, 58
cmp eax, -92285311
add ebx, ecx
and eax, -37
bts rax, 157
xor cl, -85
cmovb di, di
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
imul rsi, rdi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmp ax, -906
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test eax, ecx
xchg rdx, rcx
btc cx, si
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
