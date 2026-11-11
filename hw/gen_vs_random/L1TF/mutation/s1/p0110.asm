.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
xor rdx, rax
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], ax
add cl, cl
or esi, edx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
cmp dl, -93
inc eax
mov bl, bl
add bl, cl
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
neg ebx
add ax, 23614
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
