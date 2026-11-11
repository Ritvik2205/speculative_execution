.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
add dl, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
xor edx, esi
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rdi + rbx + 38925]
setp al
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
movsx rsi, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
add dl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
sub di, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
