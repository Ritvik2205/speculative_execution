.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
bts ebx, 8
mov dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
cmovno rdi, rbx
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
dec dx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
btc ecx, 13
add cl, -73 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
add dil, -40 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
