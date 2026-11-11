.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
and cl, dl
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
cmovnz edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
or dl, cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 60
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or bl, bl
or rdi, rbx
xor sil, 81
cmovs edx, esi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 37
or ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
bts eax, edi
cmovnl edx, ebx
cmovp ax, di
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
