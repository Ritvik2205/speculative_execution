.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
movzx ecx, bl
bt ebx, 54
xor dil, sil
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
mov rdi, rsi
sub edx, -122
or sil, -47
or al, sil
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
btr ax, 109
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
xor rdi, -72
and edx, 62
test cl, sil
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 15
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
not edx
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rbx
cmovnbe rsi, rax
xor cl, cl
or rax, -823069511
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
sub bl, cl
or sil, -47
adc dil, bl
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax]
add edx, 89
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
cmp ebx, 80
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
neg edi
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
