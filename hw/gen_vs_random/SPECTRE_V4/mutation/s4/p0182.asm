.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 37
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
imul ebx, eax, -112
movzx rdi, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
btc edi, 125
add bl, 54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
btr edx, 160
neg rbx
sub dx, si
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
xchg cx, si
sub bl, cl
test al, 57
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
cmovns rsi, rbx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
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
sub esi, -69
and ax, -197
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
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
