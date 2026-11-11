.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
or cx, 61
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
btc si, si
lea eax, qword ptr [rbx + rax]
add dl, -122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
sub dl, 105
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
add al, bl
lea dx, qword ptr [rbx + rdx]
add dil, -7
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
lea dx, qword ptr [rcx + rax]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 1
cmovo cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
