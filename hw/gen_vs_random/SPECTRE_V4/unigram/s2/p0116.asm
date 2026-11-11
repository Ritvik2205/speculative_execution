.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
sub bl, cl
cmovnle cx, ax
cmovnb ebx, eax
cmovb rbx, rcx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 95
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, -10 # instrumentation
mov dx, 23
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
and dil, cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 56
imul cl
mov dil, dil
and dl, bl
sub sil, -50
mov rax, rdi
mov dl, dl
cmovs di, dx
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
sub ebx, edx
or cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
movzx edx, dl
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
sbb dl, dl
add si, 4
mul edx
xor eax, 181978569
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb ebx, 73
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor al, -2
test sil, dil
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 4
test cl, bl
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
add cl, -82 # instrumentation
sbb dx, si
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
sbb rbx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
