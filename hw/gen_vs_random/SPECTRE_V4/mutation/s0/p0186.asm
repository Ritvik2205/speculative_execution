.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
btc rsi, 140
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sub dl, 43
and cl, 58
sbb cl, cl
cmp eax, -92285311
sub al, 99
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
btc cx, si
cmovle rax, rbx
add ebx, ecx
or bx, -111
xor cl, -54
add cx, cx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor cl, -85
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovb di, di
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
test eax, -558243208
mov cl, cl
sbb eax, -1688332460
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
bts rsi, rsi
test eax, ecx
bt edi, ebx
cmp ax, -906
xchg rdx, rcx
mov rsi, rbx
cmp rax, -227205962
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
imul rsi, rdi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovns dx, di
bts rax, 157
cmp cl, dl
and eax, -24
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add dl, 41
cmovnb esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
