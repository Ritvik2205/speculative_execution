.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
sbb cl, bl
sbb eax, 1081973675
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
btr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovl rcx, rsi
or edx, -127
mul rbx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
mov edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
sbb cl, bl
cmovnbe rbx, rax
test cl, bl
add cl, dl
test al, 66
not rdx
bts rdi, rbx
sub dil, -10
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
cmovnb dx, dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
cmovz esi, ecx
imul esi, edx
movzx rax, bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul rsi
cmovz edx, edi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
sbb al, 123
cmovp rdi, rcx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
imul di, si
imul ebx, esi, 27
and si, 68
add dl, -26 # instrumentation
btr edx, 30
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
