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
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
