.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 9
test rdi, 11
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
and dil, dil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 88
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor al, 115
test eax, 1287331633
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
test bl, 65
test dl, 9
and dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
