.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
lea rbx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
cmp ax, -11439
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
cmp bl, -114
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
