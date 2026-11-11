.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rax, rdx
cmovnbe ax, bx
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
add dl, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
add cl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
sub edi, esi
sbb cl, dl
cmp edx, 55
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
add rax, rcx
adc cl, 62
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
add al, al
mov rsi, 71
adc dl, cl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
movzx edx, al
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 24
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
xor eax, -437098167
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 56
add sil, 26
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and dl, 94
btc ax, si
movsx rsi, bl
mov dl, -34
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 16
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
xchg bl, al
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
xor di, ax
xor bl, 93
and dil, al
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
