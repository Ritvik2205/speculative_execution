.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, -359674714
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 69
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 68
or sil, dil
and sil, 32 # instrumentation
cmovnbe esi, edx
cmovo rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
cmovnz eax, edx
xor rsi, -117
or di, 14
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rax]
test dl, al
cmovnl eax, eax
and al, -103 # instrumentation
cmovbe ax, ax
cmovz di, cx
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
