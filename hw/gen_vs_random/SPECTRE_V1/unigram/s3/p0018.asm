.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb al
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
movsx rax, bx
setno dl
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
test rdx, 12
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
mov cl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 97
xor rcx, 38
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
