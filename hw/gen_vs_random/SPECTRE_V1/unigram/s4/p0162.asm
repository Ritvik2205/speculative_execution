.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
cmp edi, ecx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, 77
add al, -25 # instrumentation
sbb cx, bx
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
add al, -72
xor cl, cl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -13
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
lea edi, qword ptr [rax + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
