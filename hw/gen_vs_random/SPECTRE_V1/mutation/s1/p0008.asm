.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
cmovb eax, edi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
movsx rcx, cx
btc ebx, ebx
mov dl, cl
lea dx, qword ptr [rdx]
inc rax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], di
and al, -54
dec rdx
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
sub bl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
