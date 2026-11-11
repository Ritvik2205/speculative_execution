.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz di, di
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], bx
not di
cmovz ecx, ecx
bt eax, ebx
mov rsi, 59
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 33
sbb edi, 66
movzx rbx, cl
or eax, 1802312508
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
imul ecx, edx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 75
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 100
mul rbx
adc rbx, 5
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
mov rdi, rbx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 95
test edi, -1249897727
sbb cl, 19
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
xor rcx, 18
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
test bl, al
xor rdx, rbx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], edx
mov rsi, rax
adc cl, al
and bl, cl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmp dil, sil
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
mov ebx, 47
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 82
bt si, 67
cmovnp edi, eax
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 79
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and bl, 26
cmovnz ebx, esi
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
