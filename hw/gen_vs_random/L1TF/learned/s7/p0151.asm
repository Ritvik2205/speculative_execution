.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub al, -3
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cbw
xor sil, 64
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
adc al, bl
jmp .bb_0.4
.bb_0.4:
test ecx, 20
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
