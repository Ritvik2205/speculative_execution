.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, 109
lea ebx, qword ptr [rdi + rax]
inc rbx
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
sub cl, dil
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
bts ebx, 79
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
cmovle rbx, rdx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
bts rax, rax
lea ax, qword ptr [rax + rdi + 12]
and rsi, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
