.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 19224
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
test cl, bl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test cl, sil
and sil, -56
xor bl, -88
xor sil, al
jmp .bb_0.2
.bb_0.2:
or sil, cl
or al, -61
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test si, 92
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
and rax, 452940266
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
