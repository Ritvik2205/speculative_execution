.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, 99
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
sub al, -47
mov ax, dx
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
add cl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
movsx eax, al
setle bl
or rcx, rax
lea rax, qword ptr [rax + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
