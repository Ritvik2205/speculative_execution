.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rcx, cx
inc rax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
mov dl, cl
cmovb eax, edi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
lea dx, qword ptr [rdx]
btc ebx, ebx
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -6
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
and al, 33
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], di
dec rdx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
