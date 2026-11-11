.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, -111
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
xor cl, -85
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
imul rsi, rdi
btc rsi, 225
cmp eax, -92285311
add dl, 41
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
add ebx, ecx
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
sbb eax, 1081973675
cmovle rax, rbx
bt edi, ebx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
mov cl, cl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
and eax, -24
cmovnb esi, edi
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sub al, 99
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sbb bl, bl
test eax, ecx
cmovb di, di
bts rsi, rsi
bts rax, 157
test eax, -544019457
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
xchg rdx, rcx
and cl, 58
add cx, cx
btc cx, si
mov rsi, rbx
xor cl, -54
cmp rax, -1102558854
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
cmp ax, -906
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
sub dl, 43
cmovns dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
