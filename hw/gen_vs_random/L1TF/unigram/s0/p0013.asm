.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdi]
adc bl, dil
cmovl di, si
and rcx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
add al, 117
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and dil, dl
movzx edx, al
sbb dl, dl
sub cx, 11
mov dil, al
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
