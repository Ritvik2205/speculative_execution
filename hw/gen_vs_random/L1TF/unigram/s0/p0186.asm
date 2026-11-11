.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 84 # instrumentation
btc cx, cx
imul cx, si
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 17
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
add cl, -117 # instrumentation
lea rdi, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
add cl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 32
add cl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -31106
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
