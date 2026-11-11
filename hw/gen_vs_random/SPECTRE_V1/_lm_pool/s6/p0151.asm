.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
test al, 42
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, -99
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
jmp .bb_0.3
.bb_0.3:
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
