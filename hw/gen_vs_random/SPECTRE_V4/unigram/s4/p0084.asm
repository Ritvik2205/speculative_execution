.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
inc ebx
test bl, -29
test cx, 7280
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdi
sub cl, sil
add rdi, 111
xchg dx, dx
imul dl
or eax, edx
and ecx, 71
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 30
add al, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 70
movsx rdx, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
sub rax, rdx
cmovp rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
add al, dil
sub edx, ebx
xchg esi, edx
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 49
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], si
imul rax, rdx, 34
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 52
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
xor dil, sil
xchg rax, rdi
and di, -65
sub al, 59
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
cmp al, 105
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
