.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi], 70
add si, -5
lea bx, qword ptr [rdi + rbx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 92
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
add dil, 68 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
sbb rax, rsi
add bl, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
lea rbx, qword ptr [rcx + rdi + 71]
imul edx, eax
lea edx, qword ptr [rdi]
xchg ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
