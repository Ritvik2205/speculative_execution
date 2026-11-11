.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
sub rdx, 99
add al, 10
and al, 33
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
lea ecx, qword ptr [rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 97
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
