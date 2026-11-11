.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
bts ax, 22
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
cmovb ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
cmovnz rsi, rcx
and sil, -9
cmovno rcx, rcx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 20
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and al, -86 # instrumentation
cmovns bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
