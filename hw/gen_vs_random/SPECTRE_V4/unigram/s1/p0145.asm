.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
neg rcx
test al, dl
mul ecx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 6
and sil, -84
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
test dil, -83
or bl, al
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
imul rbx, rdx, 3
and cl, al
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edx
test al, 57
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rbx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 85
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
movzx rdi, sil
or ax, -30990
cmovnp eax, edx
and di, ax
xchg edi, eax
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rbx
mov edx, -950755477
cmovnb si, cx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
cmovnp dx, ax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 3
or dil, dil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 40
cmovl rdi, rbx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and edx, eax
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], cx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 55
xor edi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
