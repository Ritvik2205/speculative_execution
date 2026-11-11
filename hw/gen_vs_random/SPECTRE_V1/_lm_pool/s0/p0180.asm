.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 74
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
test al, -99
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
lea ax, qword ptr [rcx + rbx + 26263]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
