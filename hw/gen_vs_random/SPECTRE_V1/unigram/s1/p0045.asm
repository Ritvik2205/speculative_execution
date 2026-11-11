.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 21 # instrumentation
adc di, 96
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
add al, 64 # instrumentation
cmovnz si, ax
seto cl
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 56
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rdx + rdx + 77]
cmovnle esi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
or edi, 48
and rcx, -29
lea cx, qword ptr [rcx]
imul rdx
lea rcx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
