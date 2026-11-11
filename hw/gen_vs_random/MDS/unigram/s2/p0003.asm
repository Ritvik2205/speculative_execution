.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
cmovl edx, eax
xor dl, dil
xor sil, sil
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
cmovl eax, edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
and bl, 38 # instrumentation
cmovno rdx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
cmovl esi, eax
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
bts esi, 82
test dl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
