.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor cl, -101
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xchg rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
sbb eax, -984782068
and cl, 58
btc cx, si
cmp cl, dl
cmp ax, 23131
cmp rax, -1102558854
imul rsi, rdi
cmp eax, -92285311
cmovns dx, di
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
btc rsi, 140
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
test rdx, 27
not al
and sil, cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sub cl, -74
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 63
and bl, sil
xor cl, -54
lea rsi, qword ptr [rdi]
sub dl, 43
and eax, -24
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
add ebx, ecx
bt edi, ebx
and si, 68
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
sbb cl, cl
add sil, 26
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
xor esi, edi
cmovb di, di
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
