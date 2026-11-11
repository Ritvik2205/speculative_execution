.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 109
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or bl, dil
bt ecx, 75
or eax, -1642752131
btr rsi, rsi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 83
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
bts rsi, rsi
add bl, sil
xor al, 78
xor al, 78
and sil, 65
and rbx, 42
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
or ax, 6575
cmovno dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
