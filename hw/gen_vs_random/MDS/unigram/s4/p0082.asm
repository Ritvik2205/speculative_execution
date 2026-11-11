.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test esi, 1857129931
cmovbe ebx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdx], di
and dl, 125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
btc ax, 21
cmovnle di, dx
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and dl, 16 # instrumentation
cmovle edx, edx
and al, 35
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
xor ecx, 8
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
or di, 33
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
