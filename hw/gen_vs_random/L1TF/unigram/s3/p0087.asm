.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
sbb sil, -19
lea rsi, qword ptr [rax + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdx
jmp .bb_0.1
.bb_0.1:
test bl, 45
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 45
add sil, cl
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 46
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
