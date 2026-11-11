.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
test al, 91
xor bl, cl
cmovnz ecx, edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or ax, -14271
jmp .bb_0.3
.bb_0.3:
test dl, 48
xor dl, sil
bt cx, bx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
