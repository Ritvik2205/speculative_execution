.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, -1688332460
btc cx, si
add cx, cx
cmp eax, -92285311
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
xor cl, -54
xor cl, -85
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
cmp ax, -15031
sub al, 99
and eax, -24
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
mov rsi, rbx
cmp rax, -120490246
cmp cl, dl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
btc rsi, 140
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
test eax, -544019457
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
add ebx, ecx
cmovnb esi, edi
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
or bx, -111
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
cmovb di, di
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xchg rdx, rcx
and cl, 58
bt edi, ebx
mov cl, cl
cmovns dx, di
bts rax, 157
sbb cl, cl
imul rsi, rdi
bts rsi, rsi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmovle rax, rbx
add dl, 41
sub dl, 43
test eax, ecx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
