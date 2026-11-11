.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
cmovnb eax, edx
add bl, 104 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
neg al
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
jmp .bb_0.1
.bb_0.1:
add dl, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
xchg ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
