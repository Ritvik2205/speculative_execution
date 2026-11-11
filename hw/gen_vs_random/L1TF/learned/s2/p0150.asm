.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
test al, 15
lea rdi, qword ptr [rbx + rax]
sub bl, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and al, -68
and di, 32
mov al, sil
cmp al, 56
jmp .bb_0.3
.bb_0.3:
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
