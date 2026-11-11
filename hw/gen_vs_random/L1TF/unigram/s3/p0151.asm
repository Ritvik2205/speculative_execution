.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
neg sil
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
bt ebx, edi
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
bt cx, 30
add dl, -8 # instrumentation
lea esi, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 78
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 38
sub si, -105
adc di, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
