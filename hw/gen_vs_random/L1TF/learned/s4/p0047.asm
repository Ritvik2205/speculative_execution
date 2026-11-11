.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
btc rdx, rcx
jmp .bb_0.1
.bb_0.1:
sub dl, -49
mov dil, dl
jmp .bb_0.2
.bb_0.2:
xchg ebx, eax
cmp al, 27
cmp dl, -93
jmp .bb_0.3
.bb_0.3:
xor al, 89
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
