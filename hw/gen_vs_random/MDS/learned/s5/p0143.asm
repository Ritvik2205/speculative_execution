.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
bts rsi, 205
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
or al, -58
test sil, dil
test al, bl
or rdx, -48
test cl, -123
xor sil, cl
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
