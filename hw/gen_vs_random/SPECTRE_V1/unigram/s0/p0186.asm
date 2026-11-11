.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
imul rax, rcx, 91
test rcx, -1420345926
mul rbx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 51
sub sil, -18
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
test ebx, edi
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
xor dil, -37
and rax, 0b1111111111111 # instrumentation
lea edi, qword ptr [rsi + rdi]
add dil, -76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdi
adc al, -82
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
