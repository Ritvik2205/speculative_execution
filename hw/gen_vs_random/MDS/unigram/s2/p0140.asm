.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], eax
and cl, cl
and dl, 57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and al, 8 # instrumentation
cmovz rcx, rax
cmovb ecx, eax
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 78
btr rsi, 207
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and sil, -99 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and dl, al
cmovnle esi, eax
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 95
or di, 0b1000000000000000 # instrumentation
bsf ax, di
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
cmovnp edi, ebx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
or esi, -110
btc rdx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
