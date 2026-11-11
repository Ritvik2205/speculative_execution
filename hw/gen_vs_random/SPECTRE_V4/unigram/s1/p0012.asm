.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
xor rdx, 106
xchg bl, cl
movzx esi, dx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
or ax, ax
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], ecx
and rbx, 16
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 77
add cl, -32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
cmovnl cx, dx
cmovz ax, ax
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
sub dl, 107
bts edx, 116
and al, al
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 91
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rcx
bt edx, 89
and dl, bl
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
test dil, -5
movsx bx, bl
movzx cx, bl
sub rcx, -99
cmovo eax, edx
sbb bx, 87
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
add ecx, ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
cmovz ax, ax
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 40
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
add dil, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
test cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
