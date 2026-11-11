.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
imul rdi, rdi, 70
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sets dl
or rdx, -22
nop
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 87
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
cmovnp bx, ax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
not edi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rsi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
lea rax, qword ptr [rdx + rdi + 95]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
