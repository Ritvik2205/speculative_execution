.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and al, 54 # instrumentation
cmovnp cx, cx
btc eax, 40
test rax, 337705873
cmovnz rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmovnz ebx, esi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and al, 35
test al, dil
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rsi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
or al, -58
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
btc rsi, rsi
and dl, 97 # instrumentation
cmovnp cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
