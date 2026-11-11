.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rdx
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ecx
xor al, 122
or si, 94
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rcx]
and sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
xor dil, 81
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
test dil, bl
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
or dl, bl
and rbx, 65
or sil, dl
test edx, ecx
and ecx, ecx
and rax, rax
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
cmovb ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
