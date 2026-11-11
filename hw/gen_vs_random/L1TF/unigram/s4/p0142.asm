.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 14
lea rbx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -68
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 97
or esi, ecx
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], ecx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
lea rbx, qword ptr [rcx + rax + 55452]
add cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
cmovns edx, edx
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
btc ax, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
