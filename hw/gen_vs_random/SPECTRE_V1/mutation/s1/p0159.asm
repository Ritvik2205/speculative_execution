.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 28
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
cmp ebx, ecx
movzx dx, al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -36
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
mov rdx, rdi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
setnz dil
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
add cl, 105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -86
inc dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
