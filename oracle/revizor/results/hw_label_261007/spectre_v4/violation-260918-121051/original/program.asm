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
sbb eax, 1081973675 
and cl, 58 
btc cx, si 
cmp cl, dl 
cmp ax, -15031 
cmp rax, 1524061352 
imul rsi, rdi 
cmp eax, -92285311 
cmovns dx, di 
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax] 
btc rsi, 225 
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx] 
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax 
add cx, cx 
sbb bl, bl 
or bx, -111 
mov rsi, rbx 
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx] 
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi] 
test eax, -558243208 
bts rax, 157 
cmovnb esi, edi 
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax] 
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4 
xor cl, -85 
sub dl, 43 
and eax, -24 
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14 
add ebx, ecx 
bt edi, ebx 
mov cl, cl 
test eax, ecx 
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx] 
sbb cl, cl 
add dl, 41 
sub al, 50 
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx 
cmovle rax, rbx 
cmovb di, di 
bts rsi, rsi 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
