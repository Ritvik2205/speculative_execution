.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
xor bl, -27
or dil, sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
test al, sil
and cl, cl
and cx, -8
and dil, -62
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
xor rax, -345061362
xor ax, -5889
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 99
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
