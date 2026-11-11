.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
test rdi, rsi
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
inc cl
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
dec cl
or ax, -10161
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
xor cl, dl
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
