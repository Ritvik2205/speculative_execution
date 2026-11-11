.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 140
bt edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovb di, di
sbb cl, cl
btc cx, si
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and eax, -37
sub al, 50
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmp cl, dl
cmovns dx, di
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
mov rsi, rbx
xor cl, -54
add ebx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
sub dl, 43
cmovnb esi, edi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmp eax, -92285311
cmovle rax, rbx
cmp rax, -1102558854
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and cl, 58
xor cl, -85
mov cl, cl
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
bts rsi, rsi
test eax, -544019457
or bx, -111
cmp ax, -15031
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
imul rsi, rdi
add cx, cx
xchg rdx, rcx
sbb eax, -984782068
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
bts rax, 157
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
add dl, 41
test eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
