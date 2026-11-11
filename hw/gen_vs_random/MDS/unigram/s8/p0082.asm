.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, cl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 70
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 30
not al
xor ebx, 31
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 100
cmovbe rax, rax
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
cmovo bx, cx
and cl, 114 # instrumentation
cmovz cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
