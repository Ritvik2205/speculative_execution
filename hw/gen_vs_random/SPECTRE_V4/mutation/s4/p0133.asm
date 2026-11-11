.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sbb eax, -1688332460
xchg rdx, rcx
add cx, cx
imul rsi, rdi
cmovb di, di
cmovle rax, rbx
cmp rax, 1524061352
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
btc rsi, 140
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
add dl, 41
cmp ax, -906
cmp eax, -92285311
bt edi, ebx
sbb cl, cl
mov rsi, rbx
test eax, -544019457
and cl, 58
sub al, 119
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
bts rax, 157
cmp cl, dl
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
cmovns dx, di
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test eax, ecx
and eax, -24
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
btc cx, si
xor cl, -54
mov cl, cl
cmovnb esi, edi
sub dl, 43
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
or bx, -111
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
bts rsi, rsi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
xor cl, -54
add ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
