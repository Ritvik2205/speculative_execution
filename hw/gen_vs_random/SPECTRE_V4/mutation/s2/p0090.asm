.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 225
btc cx, si
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
bts rax, 157
imul rsi, rdi
cmp eax, -92285311
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and eax, -24
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
xchg rdx, rcx
add ebx, ecx
mov rsi, rbx
or bx, -111
bt edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
bts rsi, rsi
add cx, cx
sbb cl, cl
sbb bl, bl
sub dl, 43
cmp ax, -906
xor cl, -101
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor cl, -54
cmovns dx, di
test eax, 1561062795
and cl, 58
test eax, ecx
cmovnb esi, edi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmovle rax, rbx
cmovb di, di
mov cl, cl
sbb eax, -1688332460
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmp rax, 1524061352
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
sub al, 99
add dl, 41
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
