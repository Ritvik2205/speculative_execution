.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
setz sil
xor bl, bl
lea rbx, qword ptr [rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
sub di, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
