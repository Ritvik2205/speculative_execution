.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
movzx si, al
neg rdx
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
add dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
setnb al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
sbb rdx, -34
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
sub al, dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 55
imul edx, edi, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
