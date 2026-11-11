.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 54
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 72
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xor rsi, 76
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 61
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
test al, -84
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdx]
cmp bl, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
