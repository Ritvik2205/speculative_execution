.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, esi
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
sub dl, -12
sub bl, -6
or ax, 19104
lea rbx, qword ptr [rdi + rcx + 76]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 50
cmp cl, dl
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
