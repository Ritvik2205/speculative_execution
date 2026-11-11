.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test al, cl
test sil, al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
and sil, 89
or ax, -7150
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or ax, 127
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor rdx, -59
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 14
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rax, 1250429750
cmovnp rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
