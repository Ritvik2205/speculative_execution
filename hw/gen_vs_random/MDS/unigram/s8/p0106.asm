.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
bts esi, 82
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
test bl, 65
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
cmovle edi, esi
or dx, 125
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
cmovo rdx, rdi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 67
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], eax
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and sil, -11 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 49
test dl, dil
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or edi, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
