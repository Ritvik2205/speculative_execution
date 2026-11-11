.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 32
add bl, -126 # instrumentation
cwd
sub sil, sil
not rax
cmp dl, -115
setno al
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx]
test cl, dl
not bx
add cl, -35 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
btc eax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
