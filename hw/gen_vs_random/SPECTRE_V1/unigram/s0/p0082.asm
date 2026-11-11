.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 83 # instrumentation
setbe sil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 35
lea rax, qword ptr [rax]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ebx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 4
xor bl, -38
lea ax, qword ptr [rsi + rsi + 57]
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
and bl, cl
dec al
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
