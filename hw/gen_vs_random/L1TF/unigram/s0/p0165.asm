.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
lea edx, qword ptr [rdx + rax + 29932]
cmp rcx, 2
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
setz sil
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
lea dx, qword ptr [rsi + rcx]
xor al, dil
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
mov cl, 90
seto al
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
