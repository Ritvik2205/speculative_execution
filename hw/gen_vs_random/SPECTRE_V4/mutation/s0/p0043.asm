.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and cl, al
cmovnp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
movsx di, bl
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
add dl, -91 # instrumentation
cmovl rax, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 33
xchg esi, eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
bts edx, edx
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
sbb cl, 45
test bl, 87
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 47
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
test al, 27
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovs bx, si
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rcx]
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
or rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or ax, -26182
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
imul edx, edx
cmovo si, dx
cmp cl, dl
movzx edi, bx
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
test cl, bl
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
add dl, -96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
cmovp rax, rcx
test dl, 24
cmp edi, ebx
not dil
cmovle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
