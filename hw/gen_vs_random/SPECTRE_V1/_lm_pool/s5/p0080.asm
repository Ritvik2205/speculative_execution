.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
sbb dil, -106
mov al, dl
or al, 100
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, dl
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], al
bt edi, 121
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
