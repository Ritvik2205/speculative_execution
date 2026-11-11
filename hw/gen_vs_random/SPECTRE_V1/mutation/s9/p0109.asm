.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor al, al
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
or al, 100
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -63
lea dx, qword ptr [rsi + rdi]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
add dl, cl
and al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
