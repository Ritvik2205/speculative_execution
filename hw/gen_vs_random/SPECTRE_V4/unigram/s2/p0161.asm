.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rsi]
or rdi, rax
xor dl, 5
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], di
xor bl, 93
cmovns esi, ecx
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 48
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 47
cmovp edi, edi
sbb dl, cl
imul cl
sbb bl, -94
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sbb al, dil
cmovnb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
or di, bx
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
bt edx, 98
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 13
or bl, 42
cmp eax, -92285311
sbb bx, 6
and al, dil
sub dil, sil
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
movzx rsi, cx
cmovnbe ebx, eax
cmp di, 93
sbb dil, 96
xor dl, 81
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rax
xor bl, dil
mov rax, -8696242625349627833
not si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
