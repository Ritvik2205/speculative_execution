.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovb rcx, rbx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
lea dx, qword ptr [rbx]
add bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 15
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
movzx ax, cl
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
lea ecx, qword ptr [rdx]
btr di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
