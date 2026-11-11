.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, al
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and si, di
xor ebx, 96
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovnb rax, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 49
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
cmovns edi, ecx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
