.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
setp dil
jmp .bb_0.1
.bb_0.1:
test bl, 84
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
add bl, 68
lea ax, qword ptr [rsi + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 18
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 99
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
jmp .bb_0.4
.bb_0.4:
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
