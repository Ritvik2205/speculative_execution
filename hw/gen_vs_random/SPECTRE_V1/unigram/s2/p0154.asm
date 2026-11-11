.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
btr rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rcx], si
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
add bl, 44 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
setno bl
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
add cl, 69 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
