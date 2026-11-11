.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
xor sil, dil
xor al, cl
jmp .bb_0.1
.bb_0.1:
test cl, -123
or al, 25
not dl
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
test cl, -86
and cl, dil
or cl, 6
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and dil, -39
and ax, -4410
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
