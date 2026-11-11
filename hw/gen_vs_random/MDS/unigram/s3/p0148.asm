.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and dl, -7
or rsi, 18
bts edi, ecx
and dil, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rbx]
btr cx, 60
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
cmovnz si, si
and dil, -78 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
xor dil, bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
