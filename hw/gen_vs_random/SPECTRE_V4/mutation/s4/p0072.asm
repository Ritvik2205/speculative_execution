.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -101
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
add ebx, ecx
cmp rax, -120490246
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovnb esi, edi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
sub dl, 43
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and eax, -24
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sub al, 50
cmovb di, di
cmp eax, -92285311
test eax, ecx
sbb cl, cl
sbb eax, 2051746726
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmovns dx, di
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
add dl, 41
bts rsi, rsi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
or bx, -111
mov cl, cl
btc cx, si
bt edi, ebx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
xor cl, -101
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmp ax, -15031
cmp cl, dl
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and cl, 58
sbb bl, bl
imul rsi, rdi
cmovle rax, rbx
bts rax, 157
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
add cx, cx
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
mov rsi, rbx
xchg rdx, rcx
btc rsi, 225
test eax, -544019457
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
