.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
or al, -58
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or al, sil
test sil, -96
and bl, cl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
and bl, 68
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
