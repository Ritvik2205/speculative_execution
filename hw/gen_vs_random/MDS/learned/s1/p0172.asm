.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
bts rsi, 221
not sil
jmp .bb_0.1
.bb_0.1:
and cl, bl
xor si, 80
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 35
test bl, -9
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
