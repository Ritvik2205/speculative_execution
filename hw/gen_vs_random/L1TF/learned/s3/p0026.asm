.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 45
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sbb dl, dil
lea eax, qword ptr [rcx + rsi]
sub dil, 87
adc al, 80
and al, dl
jmp .bb_0.1
.bb_0.1:
test dx, 46
lea rbx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
