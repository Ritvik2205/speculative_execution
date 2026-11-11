.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
add rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 87
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
adc edx, 81
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ecx
add edx, 46
add cl, -117 # instrumentation
cmovs rsi, rax
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 90
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmovnle dx, bx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
add al, 118
sub dil, dil
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
imul rcx, rdi, 12
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdx
add dil, dil
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
add rbx, 95
adc sil, sil
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
sub dl, cl
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
sbb al, -47
neg dl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
cmovnbe rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 26
add cl, -42 # instrumentation
adc sil, dl
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
xchg rsi, rax
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
