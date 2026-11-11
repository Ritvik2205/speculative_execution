.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
xor cx, -18
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and di, 91
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
or bx, ax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
btc si, bx
jmp .bb_0.1
.bb_0.1:
cmovnb rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
bts cx, bx
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and dil, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 20
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
bt ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
