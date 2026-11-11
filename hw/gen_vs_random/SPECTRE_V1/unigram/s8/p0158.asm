.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dx, -112
imul dx, bx, 42
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 58
setbe dil
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 53
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
movsx rsi, ax
adc bl, -73
dec al
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
bts di, 144
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
