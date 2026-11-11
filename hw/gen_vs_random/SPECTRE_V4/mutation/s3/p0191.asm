.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -20 # instrumentation
adc bl, dl
cmp cl, 59
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
or rdx, rdi
adc bl, 0
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
cmovp rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
add al, bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
add al, -79 # instrumentation
adc rbx, 11
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
neg bl
test dl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
btc rax, 124
sbb al, 95
cmovno esi, edx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
add cl, -106 # instrumentation
cmovno rbx, rax
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
or dil, -104
and cl, cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and dl, dl
sub esi, -10
and ax, -197
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
xor dl, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
mov ebx, esi
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
