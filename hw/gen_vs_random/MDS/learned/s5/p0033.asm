.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, ax
or sil, -49
btr ax, bx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and sil, sil
xor sil, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor al, sil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
or rsi, 35
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
or si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
