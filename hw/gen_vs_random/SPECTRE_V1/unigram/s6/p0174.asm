.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setz al
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], -120
imul dl
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 64
dec cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb si, di
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and cx, di
movsx dx, cl
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rax]
lea di, qword ptr [rax + rcx]
add cl, -51 # instrumentation
cmovl ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
