.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
setno cl
adc al, dl
or sil, -44
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
adc ax, 87
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
sub cl, dl
jmp .bb_0.2
.bb_0.2:
cmp dx, 5
test al, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
