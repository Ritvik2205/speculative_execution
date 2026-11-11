.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
cmovnbe rbx, rax
cmovl rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
imul esi, edx
sbb cl, bl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sbb eax, 1081973675
not rdx
imul ebx, esi, 27
add cl, dl
mul rbx
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmovz edx, edi
test al, 80
btr rdi, rsi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
imul di, si
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
cmovnb dx, dx
cmovp rdi, rcx
bts rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
sub dil, -10
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
sbb al, 32
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
or edx, -127
add dl, -26 # instrumentation
btr edx, 30
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
mov edx, ecx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and si, 68
movzx rax, bx
cmovz esi, ecx
test cl, bl
imul rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
