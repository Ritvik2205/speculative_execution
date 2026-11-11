.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 115 # instrumentation
lea ecx, qword ptr [rcx + rdx]
lea edx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
sbb rax, 803312930
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rbx, -88
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rcx]
sbb al, -50
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
test sil, dl
sbb cl, al
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
setb cl
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add al, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
adc esi, esi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
xor ax, 22976
cmp ax, -31327
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
lea eax, qword ptr [rsi + rbx + 1473]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
