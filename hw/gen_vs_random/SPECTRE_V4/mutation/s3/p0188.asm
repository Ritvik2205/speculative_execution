.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rax, 157
bts rsi, rsi
xor cl, -54
cmp ax, 23131
mov rsi, rbx
sub al, 50
cmp eax, -92285311
test eax, ecx
sub dl, 43
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sbb bl, bl
mov cl, cl
sbb eax, 2051746726
imul rsi, rdi
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovnb esi, edi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
add ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
sbb cl, cl
cmp rax, -1102558854
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
xchg rdx, rcx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
test eax, -558243208
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
or bx, -111
bt edi, ebx
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and eax, -37
cmovb di, di
add cx, cx
cmovle rax, rbx
btc cx, si
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
btc rsi, 225
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
xor cl, -85
and cl, 58
cmovns dx, di
add dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
