.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test eax, 1880179600
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
or bx, -111
add cx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmovns dx, di
cmp rax, 2115020203
sbb bl, bl
imul rsi, rdi
cmp eax, -92285311
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
bt edi, ebx
cmp ax, -15409
add ebx, ecx
sub dl, 43
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
mov rsi, rbx
btc rsi, 225
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
mov cl, cl
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
cmp cl, dl
xor cl, -85
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
cmovle rax, rbx
and eax, -37
bts rax, 157
test eax, ecx
bts rsi, rsi
and cl, 58
btc cx, si
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
xchg rdx, rcx
cmovnb esi, edi
sub al, 119
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovb di, di
sbb eax, -984782068
add dl, 41
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor cl, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
