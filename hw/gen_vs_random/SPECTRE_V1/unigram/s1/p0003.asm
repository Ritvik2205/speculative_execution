.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
test al, -75
cmovnle rcx, rdi
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 57
sbb cx, 100
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dl
add dl, 121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rax + rbx + 83]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
setle al
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
