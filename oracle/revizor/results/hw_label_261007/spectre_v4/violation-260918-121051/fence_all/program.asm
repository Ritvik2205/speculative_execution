.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
and esi, 0b111 # instrumentation
lfence
bt dword ptr [r14 + rcx], esi 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmovnz ebx, dword ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rdx], eax 
lfence
xor cl, -101 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnle ecx, dword ptr [r14 + rcx] 
lfence
xchg rdx, rcx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnp rbx, qword ptr [r14 + rcx] 
lfence
sbb eax, 1081973675 
lfence
and cl, 58 
lfence
btc cx, si 
lfence
cmp cl, dl 
lfence
cmp ax, -15031 
lfence
cmp rax, 1524061352 
lfence
imul rsi, rdi 
lfence
cmp eax, -92285311 
lfence
cmovns dx, di 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock dec byte ptr [r14 + rax] 
lfence
btc rsi, 225 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
movsx ecx, word ptr [r14 + rbx] 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
mov dword ptr [r14 + rdx], eax 
lfence
add cx, cx 
lfence
sbb bl, bl 
lfence
or bx, -111 
lfence
mov rsi, rbx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or rsi, qword ptr [r14 + rcx] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mul dword ptr [r14 + rdi] 
lfence
test eax, -558243208 
lfence
bts rax, 157 
lfence
cmovnb esi, edi 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
or eax, dword ptr [r14 + rax] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rsi], 4 
lfence
xor cl, -85 
lfence
sub dl, 43 
lfence
and eax, -24 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock and qword ptr [r14 + rcx], -14 
lfence
add ebx, ecx 
lfence
bt edi, ebx 
lfence
mov cl, cl 
lfence
test eax, ecx 
lfence
and rcx, 0b1111111111000 # instrumentation
lfence
lock not qword ptr [r14 + rcx] 
lfence
sbb cl, cl 
lfence
add dl, 41 
lfence
sub al, 50 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock sbb qword ptr [r14 + rax], rcx 
lfence
cmovle rax, rbx 
lfence
cmovb di, di 
lfence
bts rsi, rsi 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
