.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
and rdx, 25
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
or al, bl
cmovnbe rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
movzx cx, al
cmovz edx, edi
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
mov sil, 49
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
dec rdx
xor dl, 67
xor edx, edi
add ebx, edx
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 2
add bx, 110
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
xchg rcx, rsi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
imul sil
cmovle rdi, rcx
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 8
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and dl, cl
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 17
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
cmp si, 68
test rdi, -1876639003
cmovns edx, eax
xor rax, rdi
sub dx, di
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
cmovs ebx, edx
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
xor cx, 61
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
