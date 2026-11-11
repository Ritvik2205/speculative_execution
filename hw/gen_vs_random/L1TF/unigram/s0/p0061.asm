.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 39
add al, -37 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
dec al
or di, 0b1000000000000000 # instrumentation
bsf cx, di
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
cmp cl, al
add di, 66
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 47
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 52
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
sbb cx, 51
lea ecx, qword ptr [rbx + rbx + 2102]
cmovnp ax, dx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
