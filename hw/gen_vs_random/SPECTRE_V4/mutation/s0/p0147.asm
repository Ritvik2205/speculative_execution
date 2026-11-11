.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ebx, esi, 27
imul di, si
not rdx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btr rdi, rsi
add dl, -26 # instrumentation
btr edx, 30
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
sbb al, 32
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovl rcx, rsi
and si, 68
cmovnb dx, dx
cmovp rdi, rcx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
mul rbx
imul esi, edx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
sbb cl, bl
movzx rax, bx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
imul rsi
add cl, dl
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
sbb cl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
cmovz edx, edi
cmovnbe rbx, rax
mov edx, ecx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sbb eax, -984782068
bts rdi, rbx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
cmovz esi, ecx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
test al, 80
test cl, bl
or edx, -127
sub dil, -10
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
