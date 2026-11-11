.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 58
bt edi, ebx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
sub dl, 43
btc cx, si
sbb eax, -1688332460
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
add ebx, ecx
btc rsi, 140
sub al, 99
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovle rax, rbx
cmp eax, -92285311
cmovb di, di
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmovnb esi, edi
and eax, -37
xor cl, -85
mov rsi, rbx
cmovns dx, di
add cx, cx
bts rax, 157
xchg rdx, rcx
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
sbb cl, cl
xor cl, -85
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sbb bl, bl
add dl, 41
test eax, -558243208
cmp ax, -15409
cmp cl, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
bts rsi, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
or bx, -111
cmp rax, 2115020203
test eax, ecx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
imul rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
