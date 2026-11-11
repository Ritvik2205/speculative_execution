.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, ecx
xor dl, dl
jmp .bb_0.1
.bb_0.1:
and cl, bl
or ax, -10161
sub rax, 1715032616
jmp .bb_0.2
.bb_0.2:
sbb di, cx
jmp .bb_0.3
.bb_0.3:
lea rdx, qword ptr [rdi + rbx]
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
test rcx, 35
adc cl, -34
test al, -82
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
