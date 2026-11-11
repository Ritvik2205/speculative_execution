.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edx
and dl, 120 # instrumentation
cmovnle dx, di
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovns ecx, eax
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
cmovnbe rsi, rdx
cmovns rcx, rcx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr eax, eax
bt rsi, 4
or rcx, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
bt cx, si
test ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
