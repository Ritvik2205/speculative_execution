.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
bts si, 30
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
xor al, 102
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
cmp dil, dl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 70
xor al, 102
mov dil, bl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 82
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
add bl, sil
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmovnp si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
