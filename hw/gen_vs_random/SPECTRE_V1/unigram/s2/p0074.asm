.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 78
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rsi
add eax, 1938514106
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
cmovno cx, dx
sub cl, dil
cmovnp rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
