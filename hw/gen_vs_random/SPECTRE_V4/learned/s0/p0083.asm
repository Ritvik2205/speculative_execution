.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 21
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edx
movzx cx, sil
cmp edi, ebx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
lea rbx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 96
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 55
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
test bl, bl
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
add rdi, rax
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
sub sil, -50
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
