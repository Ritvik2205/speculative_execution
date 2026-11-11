.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, cx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
not dl
test bl, sil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or al, 25
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and bl, bl
and ax, -16061
and bl, cl
xor al, 9
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
test eax, -571234566
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
