.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
btc rsi, 225
test eax, ecx
sbb eax, 2051746726
add cx, cx
bts rsi, rsi
add dl, 41
cmovb di, di
bts rax, 157
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and eax, -24
add ebx, ecx
mov cl, cl
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp cl, dl
xor cl, -85
bt edi, ebx
test eax, 1561062795
cmp eax, -92285311
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmovle rax, rbx
sbb bl, bl
btc cx, si
sub dl, 43
cmp ax, -15409
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and cl, 58
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xchg rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
cmovns dx, di
sbb cl, cl
cmovnb esi, edi
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmp rax, -1102558854
or bx, -111
xor cl, -54
mov rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
sub al, 98
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
imul rsi, rdi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
