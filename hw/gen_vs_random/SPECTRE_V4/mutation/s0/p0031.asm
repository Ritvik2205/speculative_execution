.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, ecx
bts rax, 157
add dl, 41
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
mov rsi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
test eax, ecx
sbb cl, cl
bt edi, ebx
test eax, -558243208
cmovle rax, rbx
cmovb di, di
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
sbb eax, 1081973675
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
btc rsi, 140
cmp ax, -15031
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
imul rsi, rdi
xchg rdx, rcx
cmp eax, -92285311
cmp rax, -1102558854
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
add cx, cx
xor cl, -54
cmovns dx, di
or bx, -111
sbb bl, bl
and eax, -37
xor cl, -85
cmovnb esi, edi
cmp cl, dl
sub al, 50
bts rsi, rsi
btc cx, si
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and cl, 58
mov cl, cl
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
