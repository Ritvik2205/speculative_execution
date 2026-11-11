.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
inc al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 13
lea rdi, qword ptr [rsi]
neg rax
xor al, 69
and rax, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rax]
xor sil, 56
add rdi, -94
sub di, 51
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
xor cl, -54
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
