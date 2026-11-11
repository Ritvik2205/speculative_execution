.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
not bl
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
test dil, 18
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], eax
or cl, sil
add al, 110
cmovnb edi, esi
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
sbb rax, 1380680934
cmovo si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
