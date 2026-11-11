.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -54
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
cmp ax, -906
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and cl, 58
mov cl, cl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
bts rsi, rsi
cmp cl, dl
cmovns dx, di
or bx, -111
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
xchg rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
bt edi, ebx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
mov rsi, rbx
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
test eax, ecx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
add ebx, ecx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
sub dl, 43
test eax, -558243208
add dl, 41
sbb eax, -984782068
sbb cl, cl
and eax, -24
cmp rax, 1524061352
btc cx, si
sub al, 50
cmovb di, di
imul rsi, rdi
cmovnb esi, edi
bts rax, 157
btc rsi, 140
add cx, cx
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmp eax, -92285311
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
