.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setz cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
inc sil
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
mov al, bl
sub bx, 55
xor al, bl
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
