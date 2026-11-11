.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 35
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
sub dl, dil
test dil, -126
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovle rdi, rcx
neg rax
cmovnle edi, edx
jmp .bb_0.1
.bb_0.1:
or bl, 114
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
adc al, 80
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
