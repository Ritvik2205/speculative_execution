.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 1524061352
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
sbb cl, cl
cmovnb esi, edi
cmp cl, dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xchg rdx, rcx
cmovle rax, rbx
btc rsi, 140
imul rsi, rdi
cmovns dx, di
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
xor cl, -54
sbb bl, bl
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
mov cl, cl
or bx, -111
mov rsi, rbx
add ebx, ecx
btc cx, si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
test eax, ecx
cmp ax, 23131
bts rsi, rsi
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and eax, -37
xor cl, -101
cmp eax, -92285311
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test eax, -818909344
sbb eax, -1688332460
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and cl, 58
sub al, 98
sub dl, 43
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
add dl, 41
bts rax, 157
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmovb di, di
add cx, cx
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
