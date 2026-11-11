.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
cmovnle rbx, rsi
lea rcx, qword ptr [rax + rsi]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
and cl, 69
test dl, -37
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
add al, cl
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xor di, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
