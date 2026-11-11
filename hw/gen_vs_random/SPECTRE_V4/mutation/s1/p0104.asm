.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cx, cx
and eax, -24
btc cx, si
sub dl, 43
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
btc rsi, 225
xchg rdx, rcx
cmovle rax, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
add dl, 41
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
sbb eax, 4
mov rsi, rbx
cmp ax, -15031
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test eax, 1561062795
bts rax, 157
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and cl, 58
cmp rax, -1102558854
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmp cl, dl
mov cl, cl
cmovns dx, di
imul rsi, rdi
add ebx, ecx
xor cl, -54
cmovnb esi, edi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
or bx, -111
bt edi, ebx
test eax, ecx
sub al, 98
cmp eax, -92285311
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
sbb bl, bl
bts rsi, rsi
sbb cl, cl
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
cmovb di, di
xor cl, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
