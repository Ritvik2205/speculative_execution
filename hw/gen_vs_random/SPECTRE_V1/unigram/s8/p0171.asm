.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
sbb sil, -78
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -14
lea rax, qword ptr [rdx + rbx]
movsx dx, cl
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
setnle dil
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
lea edx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
