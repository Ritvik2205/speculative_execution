.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
xchg cl, dil
setno cl
cbw
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 90
add bl, -40 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and al, -68
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
add cl, 39 # instrumentation
setle sil
xor al, bl
sbb rdi, 86
lea si, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
