.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
cmovnl ebx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rbx]
btc rax, rax
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and dl, 84 # instrumentation
cmovle dx, ax
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
test si, 58
or edx, edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
cmovle ecx, esi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
bts ecx, 3
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
bts esi, 61
xor sil, bl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
