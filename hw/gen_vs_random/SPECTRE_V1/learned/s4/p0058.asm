.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and bx, -118
and ax, 23118
xchg sil, al
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
adc edx, 96
dec bl
mov dl, bl
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
adc dl, 48
mov cl, sil
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
