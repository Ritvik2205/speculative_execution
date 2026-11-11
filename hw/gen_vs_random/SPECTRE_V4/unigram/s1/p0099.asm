.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bx, 110
cmovnl rbx, rdx
cmovnbe rax, rsi
cmovb rsi, rbx
cmovp ebx, ebx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
add cl, -21 # instrumentation
adc rsi, 43
mov cx, 15
cmovnbe rdx, rax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
adc al, dil
sub al, 50
sub cl, -74
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 43
or cx, dx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
and dil, 96
cmp rcx, 38
add rcx, 96
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
add cl, cl
and bx, 95
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
adc rcx, rbx
test edx, edi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
cmp ecx, 92
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
sub cl, bl
cmp ebx, 93
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
add dl, 31 # instrumentation
cmovnl ax, ax
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 10
sbb rdi, rsi
cmovl rdi, rbx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 87
cmovo rdx, rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
