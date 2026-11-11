.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
lea dx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
btc ebx, ebx
mov dl, cl
movsx rcx, cx
cmovb eax, edi
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -15 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
mul rcx
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
add rsi, 109
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], ax
lea rdx, qword ptr [rbx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
