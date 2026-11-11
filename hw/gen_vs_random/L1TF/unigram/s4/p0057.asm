.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or rbx, 18
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
add sil, -126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
add al, 87 # instrumentation
cmovo rax, rdx
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
sbb dl, -26
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 3
or al, -5
cmovns rdi, rsi
add bl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
add al, 112 # instrumentation
cmovnle eax, esi
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdx
sbb esi, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
