.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rdi, rcx
and dil, dil
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
bts dx, 50
cmovnbe eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
xor rdi, -9
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
xor dx, 9
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
or rbx, -72
cmovbe edx, edx
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
