.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
mov bl, dil
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
sub dx, -23
add al, -44
and dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
setno sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, al
lea rsi, qword ptr [rbx + rcx + 31]
test ax, -13885
or dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
