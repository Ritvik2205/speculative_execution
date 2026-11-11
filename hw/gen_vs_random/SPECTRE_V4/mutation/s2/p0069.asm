.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sbb cl, cl
xor cl, -54
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovnb esi, edi
or bx, -111
xor cl, -85
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
sub al, 50
cmovb di, di
cmp ax, 23131
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
mov cl, cl
test eax, 1561062795
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and cl, 58
and eax, -37
btc cx, si
bts rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
btc rsi, 225
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
cmp cl, dl
bt edi, ebx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovns dx, di
imul rsi, rdi
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
sbb eax, 4
mov rsi, rbx
cmp eax, -92285311
sbb bl, bl
bts rax, 157
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
cmp rax, -1102558854
sub dl, 43
test eax, ecx
xchg rdx, rcx
add dl, 41
cmovle rax, rbx
add cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
