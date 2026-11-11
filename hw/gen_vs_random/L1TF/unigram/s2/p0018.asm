.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
add bl, -37 # instrumentation
dec al
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 28
setz sil
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 93
xchg rcx, rdi
jmp .bb_0.1
.bb_0.1:
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 94
lea ebx, qword ptr [rdi + rdx + 70]
cmovnp esi, eax
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], 49
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
