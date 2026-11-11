.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dil
cmovnz edx, ebx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
xor bl, -88
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edx
bt di, cx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
and bl, -56 # instrumentation
cmovnle eax, esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and dx, 3
xor cl, cl
cmovp eax, edx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
