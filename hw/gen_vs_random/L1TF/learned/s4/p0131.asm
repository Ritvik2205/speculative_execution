.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
or eax, -62
lea rsi, qword ptr [rcx + rbx]
jmp .bb_0.1
.bb_0.1:
or al, bl
or bl, 114
sbb dl, dil
sub dil, sil
xchg edi, ecx
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and al, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
