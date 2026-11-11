.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
test sil, -55
xor al, 122
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
or si, -12
jmp .bb_0.1
.bb_0.1:
test bl, -114
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
and di, 99
xor al, 8
not bl
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
