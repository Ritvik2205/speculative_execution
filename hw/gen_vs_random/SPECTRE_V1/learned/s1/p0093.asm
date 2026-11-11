.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 6
or al, 100
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub bl, al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
xor sil, cl
sbb eax, -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
