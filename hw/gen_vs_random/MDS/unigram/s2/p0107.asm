.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
btr edx, ecx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
or bl, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
cmovl eax, eax
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
btr rdi, 129
test dil, -80
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
jmp .bb_0.1
.bb_0.1:
btr dx, 47
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
or cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rsi]
and rdx, rax
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
cmovp eax, edi
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
