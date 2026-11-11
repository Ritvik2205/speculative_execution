.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
or rax, rdi
cmovs rax, rax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
add dl, 77 # instrumentation
cmovno dx, bx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
dec rcx
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
movzx rdx, ax
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
sub al, 59
add rdx, rax
add cl, -119 # instrumentation
sbb edi, 96
neg rax
cmovnp bx, si
add al, -7 # instrumentation
btc dx, di
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
cmovs rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
or edx, ebx
and cl, dl
cmp al, -44
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 46
add al, -55
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdx
mul ecx
inc edi
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 30
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 29
or al, cl
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
adc al, cl
sub di, si
cmovz ecx, edx
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
add dil, 91 # instrumentation
adc dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
