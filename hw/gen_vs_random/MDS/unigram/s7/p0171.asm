.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
or ebx, -104
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and bl, 101 # instrumentation
cmovno eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], ax
cmovbe rsi, rsi
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
or dl, 51
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
cmovnb rbx, rbx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rax]
not al
bt edx, 31
cmovz rax, rax
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
