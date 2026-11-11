.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe edx, eax
xchg dl, cl
cmovno rbx, rsi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 46
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
inc cl
lea rsi, qword ptr [rdi + rdx + 97]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
add al, -37 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
add dx, 97
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 76
test si, si
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
