.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp edx, ebx
add dl, 85 # instrumentation
cmovp si, si
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
or dx, 0b1000000000000000 # instrumentation
bsr si, dx
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
lea ebx, qword ptr [rcx + rsi + 3]
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
lea dx, qword ptr [rbx + rdx + 81]
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 39
jmp .bb_0.1
.bb_0.1:
lea esi, qword ptr [rax + rax + 42]
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
lea dx, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
