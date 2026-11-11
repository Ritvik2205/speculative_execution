.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
inc rax
lea dx, qword ptr [rdx]
btc ebx, ebx
cmovb eax, edi
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
movsx rcx, cx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and al, -54
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
sub bl, -19
dec rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
