.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
lea si, qword ptr [rdi + rax]
add bx, 110
sbb bl, dl
adc bl, 89
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add rax, rcx
or al, al
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
sbb ax, -26881
movsx ecx, bx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 15
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and dil, bl
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
xor bl, al
or rdi, rax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and bl, 26
adc al, al
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
movzx ecx, bl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, edi
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 31
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
cmovnl rbx, rdx
or sil, 59
add bl, dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmovnbe di, cx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rsi, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
