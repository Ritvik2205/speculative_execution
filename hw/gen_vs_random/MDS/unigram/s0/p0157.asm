.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
btr ax, 193
btc si, si
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
bt rax, rdi
test dl, 9
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and dl, -127 # instrumentation
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
test sil, sil
btr rdx, 51
not rbx
or eax, 1725503461
and rbx, rcx
bt edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
