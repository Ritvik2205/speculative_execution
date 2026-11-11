.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
or al, -22
or sil, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and ax, 19224
and cl, al
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
btr ax, di
xor cl, 55
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
jmp .bb_0.2
.bb_0.2:
test dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
