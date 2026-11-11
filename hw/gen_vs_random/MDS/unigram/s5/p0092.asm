.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
btc edx, eax
xor al, 99
cmovz ax, ax
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovnbe edi, esi
or al, cl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and sil, -56
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
jmp .bb_0.1
.bb_0.1:
or sil, -78
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
bt ax, 76
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
xor esi, 40
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
or sil, -49
or rbx, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
