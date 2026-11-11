.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
xchg ebx, edx
add ebx, ecx
test dil, dl
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
sub sil, -35
movsx rdx, al
mov ebx, edi
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor bl, 27
add dil, 16 # instrumentation
cmovnz ax, di
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
add bl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
sub sil, 71
cmovnbe eax, ebx
test rdx, rdi
add edi, 8
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], -42
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
cmovnbe rax, rdx
mov sil, bl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
or cl, al
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rcx]
or dil, 5
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
cmp bl, cl
or eax, -646827727
cmp rsi, 22
xchg dil, dil
xchg eax, ecx
imul rdx, rsi
inc dil
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 12
sbb dil, sil
movsx dx, dil
imul rcx, rcx, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
