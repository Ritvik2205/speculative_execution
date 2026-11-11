.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 94
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
bts bx, 223
sub bl, sil
and al, -68
test bx, 76
sub sil, -99
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
