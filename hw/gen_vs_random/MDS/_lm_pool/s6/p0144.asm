.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
or dl, -8
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
xor cl, 98
test al, bl
not sil
and bl, 68
and bl, bl
btr dx, 47
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and ax, -10351
xor al, bl
test eax, 298249463
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
