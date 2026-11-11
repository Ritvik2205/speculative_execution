.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, al
and rax, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
test bl, -92
jmp .bb_0.1
.bb_0.1:
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
cmovs bx, cx
sbb rax, 2044012157
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
and dx, 80
cmovbe edi, eax
xor si, -50
xor dx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
