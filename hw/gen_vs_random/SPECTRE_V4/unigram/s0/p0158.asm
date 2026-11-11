.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
sbb dil, 33
sbb ebx, -54
mul cx
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
cmp al, bl
cmovz eax, edx
add cl, -122 # instrumentation
cmovp cx, cx
inc edx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
not rbx
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
imul dl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
and bl, al
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 5
btr si, 114
cmovl ecx, edi
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 41
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
add cl, -118 # instrumentation
sbb rbx, 78
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
or cx, -74
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
mov rbx, rsi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor eax, 308288205
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
mov rax, -4627568876460436527
cmovnb esi, edi
add dl, -75 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
adc ecx, 55
add edx, 89
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rcx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
