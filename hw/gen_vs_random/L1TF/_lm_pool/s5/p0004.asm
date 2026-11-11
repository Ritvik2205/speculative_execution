.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
btc si, ax
bt ecx, edi
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
lea bx, qword ptr [rsi + rdx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
sbb al, -14
cmovle rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
