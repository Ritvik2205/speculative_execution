.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
sbb cl, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmovle rax, rbx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
cmovns dx, di
sbb eax, 1081973675
cmp rax, 2115020203
xor cl, -54
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
mov cl, cl
xor cl, -101
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
test eax, ecx
btc cx, si
test eax, 1561062795
cmp ax, 23131
add ebx, ecx
mov rsi, rbx
sbb bl, bl
add dl, 41
sub al, 99
and cl, 58
imul rsi, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
or bx, -111
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
cmp eax, -92285311
cmp cl, dl
bt edi, ebx
cmovnb esi, edi
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
bts rsi, rsi
add cx, cx
bts rax, 157
btc rsi, 225
and eax, -37
cmovb di, di
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xchg rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
