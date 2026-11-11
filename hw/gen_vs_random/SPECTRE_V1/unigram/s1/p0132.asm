.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
imul si, dx, 29
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 23
test al, -99
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
setnle dl
or eax, ecx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
add sil, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
nop
imul dl
add cl, 83 # instrumentation
setbe al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
add al, -25 # instrumentation
sbb bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
