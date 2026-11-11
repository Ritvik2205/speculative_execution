.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
or dl, bl
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
cmovnz eax, edx
or sil, -8
cmp sil, 50
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 85
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
or al, -48
or ax, 19243
cmovp ax, cx
sub dl, sil
cmovo dx, si
adc bx, 100
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
