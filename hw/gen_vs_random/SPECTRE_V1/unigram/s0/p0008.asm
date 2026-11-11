.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], -103
btr ebx, 77
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
cmp rax, rsi
bts rbx, rdx
cmovle rdi, rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rdi]
adc rdi, -75
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
adc dx, 3
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
