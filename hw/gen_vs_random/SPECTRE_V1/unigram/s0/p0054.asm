.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
cmovno ecx, eax
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
cmovno rax, rsi
adc cx, 92
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, dl
lea rax, qword ptr [rdi + rcx + 81]
cmovno rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
or dl, sil
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
sub edx, ecx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
