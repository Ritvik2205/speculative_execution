.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 93
movsx esi, dx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add bl, -75 # instrumentation
adc bl, 59
sub bl, dl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 92
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 8
neg dl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovz ecx, esi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
cmovnle dx, dx
add rdx, rax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
neg al
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sbb al, dl
movzx ebx, dl
neg al
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], bx
and rdx, 38
btc bx, di
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
sub bl, bl
sbb al, -62
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
test cl, -89
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
imul rdx, rdi
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 37
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
