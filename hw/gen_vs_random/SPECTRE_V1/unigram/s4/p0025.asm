.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt esi, eax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdi
cwd
mov dl, 80
and rax, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 26
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rsi + rbx + 74]
add dl, 47
cmovs ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rcx]
sub cl, cl
setle dl
inc rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
