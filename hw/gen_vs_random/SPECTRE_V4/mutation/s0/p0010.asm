.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb di, di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
cmovnb esi, edi
add dl, 41
and eax, -37
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and cl, 58
cmovns dx, di
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
sub al, 99
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
cmp eax, -92285311
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
sbb bl, bl
xor cl, -101
xor cl, -54
xchg rdx, rcx
add ebx, ecx
bts rsi, rsi
test eax, -544019457
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
bts rax, 157
btc cx, si
cmovle rax, rbx
mov rsi, rbx
add cx, cx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
or bx, -111
bt edi, ebx
sub dl, 43
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb cl, cl
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmp ax, -15031
sbb eax, -984782068
cmp rax, -1102558854
imul rsi, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
test eax, ecx
btc rsi, 140
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
