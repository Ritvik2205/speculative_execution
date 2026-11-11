.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
cmp edx, 99
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
or rcx, rax
add cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
mov ax, dx
lea rax, qword ptr [rax + rbx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
setle bl
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
sub al, -97
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
movsx eax, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
