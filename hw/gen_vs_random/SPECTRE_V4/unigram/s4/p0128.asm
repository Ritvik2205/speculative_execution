.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, dil
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 17
cmovs dx, di
adc rax, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
xor dx, -43
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and edx, eax
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
btr eax, 95
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
cmovnb esi, edi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
or rdx, 1
mov sil, dl
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
mov al, sil
add cl, bl
or rax, -943474997
cmovp rsi, rdx
imul dx
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
cmovnbe rcx, rbx
cmovno eax, ebx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
movsx ebx, cx
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
imul esi, ebx, 49
bts esi, 18
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
add dl, dil
xor ax, -6064
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
sbb rdx, -43
movsx bx, cl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rsi
bts rax, 69
mov dl, al
or ax, -29521
cmovle rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
