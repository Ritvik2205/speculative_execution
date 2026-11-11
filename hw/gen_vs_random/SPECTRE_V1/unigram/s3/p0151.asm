.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, si
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
cmp dx, 22
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
movsx rdi, bx
or rcx, 77
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sub al, al
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
not eax
add dl, -65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 63
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
