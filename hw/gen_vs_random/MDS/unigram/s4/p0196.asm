.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rdx, rsi
and al, cl
xor dil, -3
test ecx, -1843375753
or esi, esi
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
cmovnb rdx, rdx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
btc edi, 230
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovno si, cx
xor rsi, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdi]
and dil, 8 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 82
btc si, ax
btr di, 89
btc rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
