.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
xor al, 16
xor dl, dil
test dil, -126
or ax, -10161
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 49
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
xor cl, al
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
