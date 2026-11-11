.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
cmp eax, -92285311
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
btc cx, si
cmovnb esi, edi
cmovns dx, di
xor cl, -85
btc rsi, 140
bts rax, 157
add ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
mov rsi, rbx
add cx, cx
sbb eax, 2051746726
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
cmovle rax, rbx
cmovb di, di
mov cl, cl
cmp rax, -1102558854
and cl, 58
cmp ax, -906
imul rsi, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and eax, -24
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
test eax, ecx
xchg rdx, rcx
xor cl, -54
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
sbb bl, bl
sbb cl, cl
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
or bx, -111
bt edi, ebx
sub al, 119
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add dl, 41
sub dl, 43
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
bts rsi, rsi
test eax, 1561062795
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
