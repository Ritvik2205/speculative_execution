.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
lea rdi, qword ptr [rdx]
add dl, -1
or al, bl
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
lea rbx, qword ptr [rdx + rcx]
xor dl, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 60
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
