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
xor cl, -54
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xchg rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
sbb eax, -1688332460
and cl, 58
btc cx, si
cmp cl, dl
cmp ax, -15031
cmp rax, 2115020203
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
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
imul sil
add dl, 110 # instrumentation
movsx ax, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sub eax, -523763262
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
add bl, cl
xor edx, eax
mov rcx, 4219775168754920203
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
sbb dx, si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
