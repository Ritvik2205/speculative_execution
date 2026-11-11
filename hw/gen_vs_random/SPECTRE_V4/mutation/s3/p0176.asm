.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, 1081973675
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
imul di, si
cmovz esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or edx, -127
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
btr rdi, rsi
cmovnbe rbx, rax
imul ebx, esi, 27
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
sbb cl, bl
cmovl rcx, rsi
sub dil, -10
cmovnb dx, dx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
imul rsi
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
test cl, bl
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
mul rbx
cmovp rdi, rcx
movzx rax, bx
test al, 80
sbb al, -62
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
bts rdi, rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sbb cl, bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
imul esi, edx
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
add dl, -26 # instrumentation
btr edx, 30
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
add cl, dl
cmovz edx, edi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and si, 68
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
not rdx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
