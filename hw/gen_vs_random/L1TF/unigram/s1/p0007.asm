.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rax, rdi
lea rdi, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
xor sil, bl
setl cl
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
xor al, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 20
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
