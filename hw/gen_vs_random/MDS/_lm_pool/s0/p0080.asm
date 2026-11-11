.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 65
and edx, -44
and cx, -2
xor rax, -270810088
xor al, dl
or cl, sil
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and al, dil
and dil, -39
and ax, 5001
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
test al, 66
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
