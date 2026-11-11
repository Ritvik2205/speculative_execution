.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb esi, edi
bt edi, ebx
sub al, 50
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
test eax, ecx
xchg rdx, rcx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
add cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
btc rsi, 225
and cl, 58
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
mov rsi, rbx
cmovb di, di
cmp eax, -92285311
add dl, 41
sbb cl, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
cmovle rax, rbx
bts rax, 157
bts rsi, rsi
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
test eax, -818909344
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
imul rsi, rdi
xor cl, -85
sbb bl, bl
cmp ax, 23131
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
btc cx, si
sub dl, 43
and eax, -24
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
xor cl, -85
cmp rax, -227205962
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
mov cl, cl
add ebx, ecx
or bx, -111
cmovns dx, di
sbb eax, 2051746726
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
