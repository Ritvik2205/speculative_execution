.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, ecx
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
mov al, dl
cmovz ebx, edx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
test ax, 19339
adc al, dil
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
sbb bl, al
cmovnle rdi, rsi
mov eax, ecx
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
