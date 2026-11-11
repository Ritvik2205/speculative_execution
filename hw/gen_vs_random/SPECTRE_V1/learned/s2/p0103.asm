.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 62
inc cl
lea rdi, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
xor dl, al
inc cl
and cl, -57
and al, -54
lea rbx, qword ptr [rdx + rsi + 34562]
xchg rax, rbx
lea dx, qword ptr [rcx + rsi]
xor dil, al
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
