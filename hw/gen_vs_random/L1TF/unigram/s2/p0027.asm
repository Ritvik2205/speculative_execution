.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 9
lea edx, qword ptr [rbx + rbx + 24069]
and cx, 127
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
lea di, qword ptr [rdi]
lea esi, qword ptr [rax + rdi + 21]
jmp .bb_0.1
.bb_0.1:
add al, 117
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
xor al, dl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 19
lea dx, qword ptr [rbx + rbx + 10]
or al, -57
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
