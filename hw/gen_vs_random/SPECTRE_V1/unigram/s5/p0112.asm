.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 31
and rdx, rsi
lea bx, qword ptr [rcx + rdx]
lea dx, qword ptr [rbx]
and rbx, 9
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
dec si
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
lea cx, qword ptr [rbx + rdi]
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
bt ax, di
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
neg rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
