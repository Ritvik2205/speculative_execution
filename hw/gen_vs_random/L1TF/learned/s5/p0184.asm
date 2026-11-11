.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmp eax, 951020724
setb dil
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
sub sil, bl
test sil, 29
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
