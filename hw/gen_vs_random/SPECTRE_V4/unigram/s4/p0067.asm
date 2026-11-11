.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], dl
mul al
and rdi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
btc rdi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
add al, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and sil, bl
cmp al, bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rax]
adc esi, edx
test al, sil
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
sub rdx, 73
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
mov sil, dil
sub bl, 66
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
imul cx, di, 10
cmovs rbx, rdi
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
movsx cx, cl
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
cmp dl, 23
cmovnb dx, bx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
bt ebx, 33
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
add al, 91 # instrumentation
adc al, sil
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
mov dl, 81
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
imul eax, ebx
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
neg edx
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
mov cl, sil
cmovnp rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
