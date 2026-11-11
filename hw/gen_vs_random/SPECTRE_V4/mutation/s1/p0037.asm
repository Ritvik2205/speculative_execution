.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edx, edi
sbb cl, bl
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
sbb al, -101
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmovnbe rbx, rax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
cmovz esi, ecx
imul esi, edx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
add cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
imul rsi
add dl, -26 # instrumentation
btr edx, 30
mov edx, ecx
and si, 68
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
not rdx
sbb eax, 1081973675
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
imul ebx, esi, 27
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
imul di, si
movzx rax, bx
bts rdi, rbx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
mul rbx
test al, 66
cmovp rdi, rcx
cmovl rcx, rsi
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
or edx, -127
cmovnb dx, dx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
btr rdi, rsi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
