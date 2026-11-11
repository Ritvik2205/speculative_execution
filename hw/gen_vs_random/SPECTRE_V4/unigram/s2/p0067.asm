.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, dl
neg rcx
and rax, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rax]
adc dil, dl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
or bl, bl
add dx, 72
add cl, 111 # instrumentation
cmovnle ax, cx
cmovl di, di
and cx, -117
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
sbb ebx, -54
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 20
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 30
add ebx, -57
test ebx, 13
add al, 17 # instrumentation
cmovnle eax, edx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 21
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], edx
inc eax
and bl, dil
movsx eax, di
test si, 72
or rdi, rdx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
sub sil, -35
mov rax, -4627568876460436527
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
test dil, -58
and rcx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rcx]
sbb rdi, 81
sbb cl, 40
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and al, bl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], si
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
or esi, 32
cmovnbe ecx, esi
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 57
bt di, 4
sbb dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
