.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
cmovle rax, rbx
and eax, -24
add ebx, ecx
bts rsi, rsi
sbb eax, 2051746726
sub al, 50
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
bts rax, 157
add dl, 41
cmovnb esi, edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
imul rsi, rdi
bt edi, ebx
cmp rax, -227205962
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
mov rsi, rbx
cmp eax, -92285311
btc cx, si
mov cl, cl
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
test eax, -544019457
add cx, cx
sub dl, 43
xor cl, -101
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
sbb bl, bl
sbb cl, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor cl, -85
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xchg rdx, rcx
and cl, 58
cmovns dx, di
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
or bx, -111
cmp ax, -906
btc rsi, 225
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
test eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
cmp cl, dl
cmovb di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
