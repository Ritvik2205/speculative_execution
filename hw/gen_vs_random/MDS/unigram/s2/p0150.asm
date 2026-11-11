.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
cmovbe rbx, rax
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
and dl, -73 # instrumentation
cmovns rsi, rcx
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and eax, -2116875023
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
cmovnb rbx, rbx
or dl, sil
jmp .bb_0.1
.bb_0.1:
cmovbe cx, cx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
xor si, 93
cmovo bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
or bl, 84
or rsi, 97
or sil, -8
or ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
