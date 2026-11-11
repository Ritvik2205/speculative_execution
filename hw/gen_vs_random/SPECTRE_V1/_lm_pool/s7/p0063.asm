.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
sub bl, dl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea dx, qword ptr [rdx + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 1
lea si, qword ptr [rcx]
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
