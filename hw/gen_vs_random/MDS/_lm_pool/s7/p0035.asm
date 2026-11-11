.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 54
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor cl, 24
test rcx, -613256812
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
xor sil, -126
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and eax, 561041355
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test al, dil
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
