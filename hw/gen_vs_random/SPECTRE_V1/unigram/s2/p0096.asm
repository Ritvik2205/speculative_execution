.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
add cl, -56 # instrumentation
sbb rbx, 96
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and dl, bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
jo .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, 24404
cmovz ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
btr rdi, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
