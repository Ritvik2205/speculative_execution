.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
test rdi, 1238697264
sets cl
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
xor al, 86
adc bl, bl
neg ax
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -26 # instrumentation
adc ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
cmp al, al
and bl, 46
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 102
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
