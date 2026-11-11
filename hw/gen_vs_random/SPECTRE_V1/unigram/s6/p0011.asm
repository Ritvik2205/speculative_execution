.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdi
imul rdx
and dl, sil
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], ax
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and al, 33
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
cmovnp rax, rbx
and rcx, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
