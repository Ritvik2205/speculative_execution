.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 26 # instrumentation
sbb dil, cl
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
lea eax, qword ptr [rsi + rdx + 45]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno rax, rcx
cmovb ecx, ecx
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
