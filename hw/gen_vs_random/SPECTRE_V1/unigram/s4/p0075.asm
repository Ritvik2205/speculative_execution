.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
sbb dl, sil
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
not cx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
add al, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 31
cmovz ax, ax
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and cl, 86
sub dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
