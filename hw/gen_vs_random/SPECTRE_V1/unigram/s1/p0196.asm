.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not dl
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
xchg cl, cl
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
add cl, -104 # instrumentation
lea rcx, qword ptr [rax + rbx + 95]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
cmovle eax, edx
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
lea dx, qword ptr [rcx + rax]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
