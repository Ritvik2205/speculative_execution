.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
test bl, 106
cmovb edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
btc rsi, rbx
and cl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
jmp .bb_0.1
.bb_0.1:
add cl, -84 # instrumentation
xchg rdx, rsi
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rax + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
test ecx, 1044879383
xor cl, cl
and al, 93
or sil, -8
cmovnz edx, ecx
or rax, -2043376621
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
