.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
seto dl
add bl, -76 # instrumentation
cmovnle ax, cx
cmp rax, rcx
and dl, -111
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 74
lea rcx, qword ptr [rdi + rsi]
cmovb di, cx
cmovnbe rdx, rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -94 # instrumentation
or bl, sil
lea rsi, qword ptr [rax + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 30
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
imul rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
