.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test dil, 46
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor sil, -126
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
not bl
xor dil, 124
and al, 106
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
xor cl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
