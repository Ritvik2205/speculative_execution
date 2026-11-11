.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, si
xor ecx, 5
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 117
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
cmp al, 89
lea rdx, qword ptr [rbx + rbx + 25]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or al, dil
or cx, bx
and al, -119
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
cmp sil, 37
and bl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
