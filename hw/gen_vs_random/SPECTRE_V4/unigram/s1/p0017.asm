.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
cmovnbe ebx, edx
xor rbx, 88
mov dil, dil
add cl, -117 # instrumentation
cmovs rdi, rcx
test dl, al
adc bl, 89
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and cx, 17
test edi, -1249897727
cmovnz edi, esi
cmovnbe ebx, edx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor cl, -101
sbb bl, al
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 68
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
sbb bl, sil
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and ax, 35
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
add esi, -5
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
movzx si, bl
cmovns rbx, rcx
btr rax, rsi
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovs rcx, rsi
or al, dil
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
sbb al, -62
cmovnbe ebx, ecx
test al, 66
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 13
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add dl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
test sil, 1
add cl, -117 # instrumentation
cmovs rbx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
bts rax, rax
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
add dl, -10 # instrumentation
cmovnbe edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
