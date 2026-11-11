.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
or eax, -126
cmovbe rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dl
add al, -74 # instrumentation
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
mov sil, dl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
add cl, -123 # instrumentation
cmovnp rdx, rcx
add cl, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
lea rdx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
sbb esi, 38
cmp bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
