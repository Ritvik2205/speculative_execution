.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 72
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 98
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
imul rbx, rdi, 96
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 95
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 79
add dl, 41
xor al, dil
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
test bl, bl
and rsi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rsi]
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
cmovp bx, ax
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 73
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
sbb bl, bl
adc esi, 90
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 72
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
add al, dl
add bl, 38 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 40
and al, bl
add cl, -37 # instrumentation
adc edx, 24
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
cmovnbe ebx, edi
sub al, dil
test bl, al
xor dil, 56
sub rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
cmovnb eax, ecx
add dl, 31 # instrumentation
cmovnl dx, dx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 55
and sil, cl
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 24
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
