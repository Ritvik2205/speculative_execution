.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, -92285311
add ebx, ecx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovle rax, rbx
cmovnb esi, edi
sub dl, 43
sbb bl, bl
and eax, -24
cmp cl, dl
cmovb di, di
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
add dl, 41
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
mov rsi, rbx
cmp rax, -1102558854
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
btc rsi, 225
bt edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
bts rax, 157
xor cl, -54
test eax, -558243208
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
bts rsi, rsi
test eax, ecx
mov cl, cl
xchg rdx, rcx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and cl, 58
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmp ax, 23131
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
sbb cl, cl
cmovns dx, di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sbb eax, -984782068
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
btc cx, si
or bx, -111
imul rsi, rdi
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
xor cl, -54
add cx, cx
sub al, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
