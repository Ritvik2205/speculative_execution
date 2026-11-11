.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rbx
mov sil, dil
cmp al, dl
sub rdx, rdi
cmovb rbx, rcx
add bl, -12 # instrumentation
lea rdi, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
sbb eax, -417098439
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 57
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
add cl, dl
and al, -23
sub dl, sil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 81
inc ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
