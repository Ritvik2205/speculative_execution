.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or ax, 18658
dec cl
cmp al, dil
adc al, cl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 73
sub al, cl
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and al, -23
sub bl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
