.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, rcx
imul rcx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
neg rbx
setle dil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, esi
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
add al, 110 # instrumentation
add dil, -22 # instrumentation
cmovnz edi, edi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
add cl, -18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 28
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 109
add ax, 8031
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
