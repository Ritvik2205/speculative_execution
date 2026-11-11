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
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
xchg rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
sbb eax, 4
and cl, 58
btc cx, si
cmp cl, dl
cmp ax, 23131
cmp rax, 1524061352
imul rsi, rdi
cmp eax, -92285311
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
setno bl
test rax, -344032571
cmovbe si, dx
cmovno edi, ebx
imul rdi, rdx
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
btc rdx, 61
sub cl, 116
test rax, -331426050
test rax, -344032571
test rax, -344032571
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor cl, -85
and bl, al
mul cl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
mov cl, cl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmp rax, 2115020203
cmp bl, 13
cmp ax, 23131
neg bl
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
sbb cl, dil
or eax, 1802312508
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
