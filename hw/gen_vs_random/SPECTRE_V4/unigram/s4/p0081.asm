.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdi, rax
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
sbb edi, eax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
and al, sil
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
movsx edx, ax
cmovs rcx, rcx
or rdx, 1
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
cmp al, al
imul rsi, rsi
add al, 121 # instrumentation
movsx ecx, dx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 42
cmovs edi, eax
or dl, 71
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -115
or rcx, 60
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
movsx cx, dl
imul edx, ebx, 1
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
xor al, dil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rax
and edx, eax
dec dil
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
cmovnz cx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
xor rdi, -72
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and cl, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx]
or dl, dil
cmovl si, ax
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], -86
adc dl, dl
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 58
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
