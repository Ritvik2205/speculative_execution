.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 7
or al, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
or al, -17
or al, dl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
test cl, al
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
test rax, -648054011
xor sil, -46
bt bx, ax
or al, 37
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
