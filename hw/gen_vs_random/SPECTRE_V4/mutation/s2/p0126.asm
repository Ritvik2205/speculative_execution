.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmp ax, 23131
cmp rax, -227205962
bts rax, 157
sbb eax, -984782068
cmovle rax, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sub al, 50
cmovns dx, di
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
btc rsi, 140
cmovnb esi, edi
bts rsi, rsi
or bx, -111
and cl, 58
cmp cl, dl
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
add dl, 41
test eax, -544019457
add ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
cmp eax, -92285311
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
add cx, cx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
mov rsi, rbx
sbb cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
mov cl, cl
sub dl, 43
test eax, ecx
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and eax, -24
cmovb di, di
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
xor cl, -101
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
bt edi, ebx
xor cl, -85
btc cx, si
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
imul rsi, rdi
xchg rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
