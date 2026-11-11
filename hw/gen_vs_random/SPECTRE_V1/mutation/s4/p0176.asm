.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
or eax, -1641258390
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
btr ax, dx
bt rbx, 244
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rsi
test bl, -8
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 43 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -62
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
lea rax, qword ptr [rbx + rdx + 34714]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
