.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
sub bl, dl
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
lea edx, qword ptr [rcx]
or cl, -98
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 23
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bt ebx, 45
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
sbb dil, cl
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 99
cmovns rdx, rax
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
adc dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
