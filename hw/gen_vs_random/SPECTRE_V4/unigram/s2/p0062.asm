.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
cmp dl, cl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
xor ecx, 80
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
or dil, 89
and rbx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
test eax, ebx
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], edi
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
mul cx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
btr edi, esi
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 22
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add al, 17 # instrumentation
cmovnle esi, ecx
and dl, cl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 34
movsx rbx, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
dec al
imul ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
xor dil, 117
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], edx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 39
sbb cl, 45
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], al
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
adc eax, 948001339
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 79
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
btc rdx, rsi
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
inc sil
adc edx, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
