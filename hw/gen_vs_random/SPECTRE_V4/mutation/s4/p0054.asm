.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, -111
bt edi, ebx
cmovb di, di
add dl, 41
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
bts rax, 157
xor cl, -54
imul rsi, rdi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmp cl, dl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
bts rsi, rsi
btc rsi, 225
test eax, -558243208
add cx, cx
mov rsi, rbx
mov cl, cl
cmp ax, -15031
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
sub al, 99
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
sbb bl, bl
cmovle rax, rbx
sub dl, 43
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
sbb eax, -984782068
and cl, 58
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
sbb cl, cl
cmovnb esi, edi
xchg rdx, rcx
add ebx, ecx
and eax, -24
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
btc cx, si
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test eax, ecx
xor cl, -54
cmp eax, -92285311
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovns dx, di
cmp rax, 2115020203
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
