.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 102
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
cmovns cx, bx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
cmp rcx, 4
imul dl
or al, cl
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
add dl, -99 # instrumentation
not edx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 91
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edi
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], bx
xor al, dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 93
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
add bl, 38 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
mov sil, sil
inc eax
cmp al, al
or al, -71
sbb al, -101
mov al, 81
xchg rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 41
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
or cx, bx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 32
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
add ax, -15653
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 68
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
adc edi, 24
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
mov bl, 80
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
add bl, bl
cmovle eax, edx
mov sil, 32
or al, al
cmovnp rdx, rdx
imul cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
