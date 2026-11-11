.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax + rbx]
sub al, 9
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
mov ax, dx
or rcx, rax
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
add cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
setle bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
cmp edx, 99
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
movsx eax, al
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
