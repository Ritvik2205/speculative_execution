.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz bx, dx
xor edi, eax
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], edx
or dl, -89
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 86
test rdi, rbx
and bx, 40
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and cl, -14 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rcx]
xor dil, -124
and rsi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
btc di, 164
and dl, -26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
xor rax, -1657511731
or ecx, 32
cmovo rdx, rcx
cmovo edx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
