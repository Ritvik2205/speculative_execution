.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 14
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
add cl, 28 # instrumentation
setnz cl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
bts rax, 140
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
sub eax, -518999763
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
cwde
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
cmovnbe rax, rbx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
