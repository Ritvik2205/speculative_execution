.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
or al, 16
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
or sil, -78
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
test al, 91
or cl, -77
and ebx, 67
xor sil, -46
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
test sil, -96
test cl, al
xor sil, 94
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
