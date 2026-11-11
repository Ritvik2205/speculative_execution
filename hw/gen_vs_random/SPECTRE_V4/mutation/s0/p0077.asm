.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and eax, -24
cmp eax, -92285311
test eax, 1880179600
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
xor cl, -101
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sbb bl, bl
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
mov rsi, rbx
cmp cl, dl
sbb eax, 1081973675
cmp ax, -15031
cmp rax, 1524061352
add ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
cmovb di, di
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovns dx, di
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
bts rsi, rsi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
cmovnb esi, edi
and cl, 58
cmovle rax, rbx
sbb cl, cl
mov cl, cl
xor cl, -101
imul rsi, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
btc cx, si
btc rsi, 225
xchg rdx, rcx
bts rax, 157
add cx, cx
sub dl, 43
test eax, ecx
sub al, 119
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
or bx, -111
bt edi, ebx
add dl, 41
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
