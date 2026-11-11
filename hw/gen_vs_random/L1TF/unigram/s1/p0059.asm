.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bl
adc bl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
xor al, 38
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
mov al, al
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and dx, 90
lea ebx, qword ptr [rdx + rdi]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 7
sub edi, ebx
jmp .bb_0.1
.bb_0.1:
or rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
imul sil
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
