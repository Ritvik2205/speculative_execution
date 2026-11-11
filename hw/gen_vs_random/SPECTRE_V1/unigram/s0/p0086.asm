.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
adc al, sil
xchg eax, ecx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
dec al
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 33
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 55
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], di
setnl bl
xor rbx, 64
sbb al, -61
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
