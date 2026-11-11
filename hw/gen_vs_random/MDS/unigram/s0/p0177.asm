.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and sil, -94
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
cmovbe di, di
and sil, dl
bts edi, eax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 19
bt rsi, rdx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 93
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
bt rsi, 74
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
xor sil, al
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
xor dl, -68
and al, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
