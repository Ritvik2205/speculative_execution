.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rcx]
test al, -75
xchg rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 49
add cl, 9 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno dx, cx
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
sub rax, -1628299544
btr ax, si
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
sub cl, al
sub dil, sil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
