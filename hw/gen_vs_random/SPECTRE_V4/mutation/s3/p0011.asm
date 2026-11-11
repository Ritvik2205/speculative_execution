.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and cl, 58
sbb eax, -984782068
sub dl, 43
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test eax, ecx
xor cl, -85
btc rsi, 140
cmp eax, -92285311
btc cx, si
sub al, 99
and eax, -24
cmovnb esi, edi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
imul rsi, rdi
sbb cl, cl
or bx, -111
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
test eax, 1880179600
sbb bl, bl
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmp ax, -15031
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmovb di, di
add ebx, ecx
cmp cl, dl
add dl, 41
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovns dx, di
cmovle rax, rbx
bts rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add cx, cx
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
xchg rdx, rcx
cmp rax, 1524061352
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
mov rsi, rbx
bts rax, 157
bt edi, ebx
xor cl, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
