.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
add bl, 97 # instrumentation
cmovnb bx, ax
add dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
cmovle bx, cx
add bl, -118 # instrumentation
cmovp cx, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
or cl, -62
and dil, 98
setnle cl
bt edi, ecx
imul rcx, rsi, 94
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
