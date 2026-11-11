.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, bl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
add cl, 83 # instrumentation
setbe dl
and dx, 31
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
add cl, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 48
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 76
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
add esi, 81
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
or eax, ebx
add dx, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
