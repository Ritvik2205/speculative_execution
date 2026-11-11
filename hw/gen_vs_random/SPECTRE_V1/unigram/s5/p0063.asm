.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
sbb edx, edi
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 63
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
cmp dl, cl
lea cx, qword ptr [rdi + rdx + 42]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sub bl, bl
bts edx, 177
xor edx, 81
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
