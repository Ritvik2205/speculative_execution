.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and al, dl
xor dl, al
or rax, 1749358813
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
cmovp edi, edi
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
and al, -37
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
jmp .bb_0.1
.bb_0.1:
and dl, 60 # instrumentation
cmovno edi, edi
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rax
test ecx, 1044879383
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
cmovnbe ebx, edi
cmovnle rcx, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 5
cmovns esi, ebx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
or dl, al
test rax, 1732677821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
