.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edx, edi
not rdx
cmovnbe rbx, rax
cmovl rcx, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
cmovnb dx, dx
add cl, dl
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
imul esi, edx
cmovz esi, ecx
mov edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
test cl, bl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb al, -101
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
test al, 80
bts rdi, rbx
add dl, -26 # instrumentation
btr edx, 30
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sub dil, -10
or edx, -127
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and si, 68
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
sbb cl, bl
sbb cl, bl
imul di, si
mul rbx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
imul rsi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
imul ebx, esi, 27
cmovp rdi, rcx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
sbb eax, 1081973675
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btr rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
