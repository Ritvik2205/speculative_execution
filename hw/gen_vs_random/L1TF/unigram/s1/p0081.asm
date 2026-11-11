.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
add dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
sbb al, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 73
add sil, -66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
xor sil, 64
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rax
inc al
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sbb rsi, 10
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 55
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 45
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
