.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 52 # instrumentation
sets dl
test edi, 12
add sil, sil
not rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
sbb ax, -17107
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
cmovb cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
