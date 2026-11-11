.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
xor al, -119
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
add bl, -53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and al, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rbx
jmp .bb_0.4
.bb_0.4:
test bl, al
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
not cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
jmp .bb_0.5
.bb_0.5:
bts rsi, 89
or rax, rdi
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
sub eax, 37
xor dl, bl
xor al, -119
adc al, dil
cmovnb esi, edi
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
