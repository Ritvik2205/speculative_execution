.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
lea eax, qword ptr [rdi]
cmp ecx, 29
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
add al, -47
jmp .bb_0.1
.bb_0.1:
test al, -126
jns .bb_0.2
jmp .exit_0
.bb_0.2:
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
