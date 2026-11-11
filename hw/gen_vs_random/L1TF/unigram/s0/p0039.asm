.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, ecx
adc esi, 23
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
not dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], cl
add al, 65 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
bt edx, 92
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
sbb ecx, 53
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 51
dec cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
