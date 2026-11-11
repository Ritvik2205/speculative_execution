.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rdx, rbx
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
xor ax, di
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
movsx eax, dl
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
mov dx, di
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
add bl, 71 # instrumentation
cmovnle rax, rbx
add rcx, -61
add sil, 16 # instrumentation
cmovnz di, si
cmovno rcx, rdi
adc rcx, rsi
mul rcx
cmp al, -44
cmovno edx, eax
cmovno esi, eax
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
cmovnz ecx, edi
adc rbx, 60
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
btc di, 83
add al, dl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
cmovno ecx, esi
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and cx, -117
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
test rcx, 80
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
mov rbx, 24
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 36
test cl, -31
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
sub esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
