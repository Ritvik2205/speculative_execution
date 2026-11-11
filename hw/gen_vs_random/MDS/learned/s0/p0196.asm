.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
or dil, sil
and bl, sil
test sil, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and edx, -44
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
test al, bl
and bl, bl
and bl, al
and cl, -19
test sil, cl
xor al, 9
or al, -61
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
xor sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
