.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or al, -61
xor dl, -19
and cl, -19
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovns rcx, rdx
cmovb si, bx
not dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
btc ecx, ebx
or edi, -88
test dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
