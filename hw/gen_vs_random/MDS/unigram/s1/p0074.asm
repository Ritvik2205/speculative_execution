.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
xor al, -89
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
or rbx, -77
btr esi, edx
and cl, 7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
test bx, 4954
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
and dl, 125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
test dl, 48
or esi, esi
cmovb ax, ax
and cl, -103 # instrumentation
cmovbe cx, cx
btr bx, ax
xor rdx, -59
or dl, sil
cmovl rcx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
