.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and ax, -10351
xor bl, -102
xor cx, -18
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
not cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and esi, 79
btr ecx, edx
and cl, -19
jmp .bb_0.1
.bb_0.1:
test al, -7
and ax, -16061
and cl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
