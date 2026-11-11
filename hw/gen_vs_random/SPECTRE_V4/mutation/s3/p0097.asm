.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, -92285311
test eax, 1880179600
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
or bx, -111
add cx, cx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add dl, 41
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb bl, bl
imul rsi, rdi
cmovns dx, di
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmp cl, dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
cmovnb esi, edi
xchg rdx, rcx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and eax, -37
bts rax, 157
bt edi, ebx
btc rsi, 225
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
test eax, ecx
cmp rax, -227205962
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sub dl, 43
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
btc cx, si
cmovle rax, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovb di, di
cmp ax, -15031
xor cl, -101
bts rsi, rsi
and cl, 58
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
add ebx, ecx
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
mov cl, cl
sub al, 50
sbb eax, -1688332460
mov rsi, rbx
xor cl, -101
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
