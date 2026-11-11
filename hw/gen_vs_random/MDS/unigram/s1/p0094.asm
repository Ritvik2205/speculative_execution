.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
cmovnl eax, edi
cmovbe cx, si
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 28
and ax, cx
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 84
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 47
btc si, 82
cmovnl rcx, rcx
test rax, 1732677821
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
cmovnz di, ax
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
