.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 140
add ebx, ecx
test eax, -544019457
add dl, 41
xchg rdx, rcx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb cl, cl
and eax, -24
cmovle rax, rbx
btc cx, si
xor cl, -101
cmp eax, -92285311
cmp cl, dl
sub dl, 43
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmp rax, 1524061352
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
mov rsi, rbx
imul rsi, rdi
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
bts rsi, rsi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
sbb bl, bl
cmp ax, -15031
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
sub al, 99
or bx, -111
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
sbb eax, 4
cmovb di, di
bts rax, 157
mov cl, cl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
bt edi, ebx
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and cl, 58
cmovnb esi, edi
test eax, ecx
add cx, cx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovns dx, di
xor cl, -101
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
