.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
or dl, al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
add dx, 91
cmovb ax, bx
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 47
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
lea cx, qword ptr [rdx + rcx + 91]
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
