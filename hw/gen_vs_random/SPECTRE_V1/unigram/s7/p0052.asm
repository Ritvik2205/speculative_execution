.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rsi
test dil, dl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
test si, 33
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cdq
and bl, -43
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
add al, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 76
bswap eax
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 47
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
lea edx, qword ptr [rbx + rbx + 92]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
