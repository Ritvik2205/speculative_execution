.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
sub cl, al
or cl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
adc ecx, ebx
adc sil, -2
and cl, 126
or al, cl
imul dx, ax, -115
and dx, dx
cmp cl, -80
sbb al, 57
cmovns di, cx
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
cmovnbe esi, ebx
adc rsi, rcx
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
xor cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp al, cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
and cl, al
cmp dx, -1
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
or dl, al
add eax, -1398129660
cmp cx, ax
cmp al, 115
sub dil, 35
mov ecx, edx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
neg dl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmovb bx, cx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
