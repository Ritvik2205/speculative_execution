.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
adc al, -103
xor al, cl
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 24
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
lea edx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
test rdx, rdi
cmp rdi, rdi
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
add bl, 37 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 109
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
lea si, qword ptr [rdx + rsi + 21492]
cmp eax, 951020724
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdi]
xor rax, rcx
imul sil
test ax, 7679
mov cl, al
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
