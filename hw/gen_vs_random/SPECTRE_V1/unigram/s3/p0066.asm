.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
lea bx, qword ptr [rcx + rdi]
adc dl, 49
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 88
cmovl eax, esi
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
sbb rcx, 76
add bl, 36 # instrumentation
setnl dil
add dil, 40 # instrumentation
lea di, qword ptr [rax + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
adc rcx, 69
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
cmp bl, cl
add dl, -124 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and dl, cl
cwde
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
