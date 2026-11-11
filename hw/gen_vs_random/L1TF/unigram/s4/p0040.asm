.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, 88
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
add al, bl
cmp rbx, 18
sub dx, 34
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
sub rdx, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 50
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
lea ebx, qword ptr [rbx + rsi + 28]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
