.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmovo rbx, rdx
btr edx, eax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and bl, -13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
cmovo rax, rax
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
or cx, 49
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
cmovns rax, rdx
cmovnz eax, edi
test rax, 1978892575
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
and rdi, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
