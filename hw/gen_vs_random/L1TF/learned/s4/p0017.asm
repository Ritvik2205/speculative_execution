.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
add al, 117
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
bts edi, 96
sub bx, 63
sbb sil, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
