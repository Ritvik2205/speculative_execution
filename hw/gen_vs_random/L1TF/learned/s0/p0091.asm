.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
not al
add cl, 19
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
add cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
lea rcx, qword ptr [rsi]
bt rsi, rcx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
cmovb bx, cx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add bl, bl
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 76
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
