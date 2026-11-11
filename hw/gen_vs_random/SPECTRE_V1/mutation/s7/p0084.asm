.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea cx, qword ptr [rdx + rdi]
cmovnb rdi, rsi
cmp rsi, 53
sbb al, 66
cmovle dx, di
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
sub dil, al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -49
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
imul eax
or dl, al
and rdx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
