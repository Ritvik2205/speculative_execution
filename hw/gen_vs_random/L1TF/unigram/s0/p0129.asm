.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ebx
sub rdx, 21
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
adc rbx, 12
imul cx, ax, 37
inc rax
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
sub sil, cl
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edi
sbb cl, -11
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 52
test edx, ebx
add dl, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
