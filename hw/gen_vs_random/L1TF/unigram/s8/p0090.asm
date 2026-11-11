.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 77
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
add cl, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
cmp bl, al
sub eax, 92
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
cmp dl, -56
add dl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
