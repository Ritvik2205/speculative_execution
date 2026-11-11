.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, cl
bts rax, 157
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
btc rsi, 225
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
bt edi, ebx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
sbb eax, 2051746726
sub al, 98
cmp ax, 23131
test eax, 1561062795
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
btc cx, si
xor cl, -85
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
add dl, 41
imul rsi, rdi
cmp rax, 2115020203
add cx, cx
cmovns dx, di
cmovb di, di
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmovnb esi, edi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovle rax, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and cl, 58
or bx, -111
mov cl, cl
and eax, -24
cmp eax, -92285311
mov rsi, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
bts rsi, rsi
test eax, ecx
xor cl, -85
sub dl, 43
add ebx, ecx
sbb bl, bl
xchg rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
