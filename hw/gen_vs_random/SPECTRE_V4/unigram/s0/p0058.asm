.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
add bl, -72
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
xchg al, bl
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
movzx ecx, sil
movzx ax, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sbb dil, cl
sub eax, ebx
cmovp rbx, rsi
sbb edx, 45
and rsi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
cmp si, 1
bt eax, esi
xor rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
add dl, -114 # instrumentation
cmovl cx, si
sub sil, -36
sbb dl, -99
adc dl, cl
test dl, al
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
sub dil, dil
cmovnl rax, rbx
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
xor esi, 35
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
dec rcx
sbb dil, 29
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 49
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
sub sil, cl
xor ax, 25554
cmp si, dx
inc edx
cmovnp bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
