.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -123 # instrumentation
sbb bl, 9
add rcx, -61
and ebx, edi
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
movsx eax, dl
cmovs ecx, edi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
or rcx, rdi
and sil, dil
sbb sil, bl
bts cx, bx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 27
test cl, bl
mov cl, 14
sub sil, -35
cmovbe esi, ebx
add dl, -12 # instrumentation
cmovp esi, ebx
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
cmp bl, 12
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
btc ecx, 201
dec al
cmovno rsi, rdx
cmp dil, dil
add bl, -43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
cmovo ebx, ebx
cmovnp rcx, rdx
bt rsi, rdi
cmovle rdi, rcx
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
or cx, 59
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], di
mov al, al
adc sil, al
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 61
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 54
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 79
xor bl, 27
add bl, -24 # instrumentation
cmovnbe si, si
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
