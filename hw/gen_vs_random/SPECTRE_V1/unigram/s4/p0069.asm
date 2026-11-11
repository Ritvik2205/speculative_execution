.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
and eax, 933895314
sbb al, 118
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
lea rdx, qword ptr [rbx + rdi]
xor ebx, ecx
lea rdx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
lea edi, qword ptr [rcx]
sub dl, -12
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
imul dl
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
