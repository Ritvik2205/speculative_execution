.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
test al, 80
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
cmovz esi, ecx
imul ebx, esi, 27
cmovnbe rbx, rax
sbb eax, 1081973675
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
test cl, bl
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
add dl, -26 # instrumentation
btr edx, 30
mul rbx
btr rdi, rsi
cmovl rcx, rsi
sbb cl, bl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
bts rdi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
imul esi, edx
add cl, dl
sbb al, 123
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
imul rsi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
movzx rax, bx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
sub dil, -10
or edx, -127
cmovz edx, edi
cmovnb dx, dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and si, 68
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
imul di, si
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
mov edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
not rdx
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovp rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
