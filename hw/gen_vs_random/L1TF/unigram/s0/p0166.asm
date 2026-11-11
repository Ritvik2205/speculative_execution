.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
add dl, 127 # instrumentation
setnbe bl
setz bl
add cl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 6
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
mov rdi, rsi
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rdi
lea rcx, qword ptr [rcx + rdi]
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
sub ecx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
