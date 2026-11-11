.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
xor al, 16
and bl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
mov sil, dl
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
