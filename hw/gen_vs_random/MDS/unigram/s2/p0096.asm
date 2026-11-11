.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
or al, 16
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
test bl, -114
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
xor bl, dl
test bl, 65
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 36
cmovbe bx, si
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 75
xor cx, -18
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and cl, -44 # instrumentation
cmovno rcx, rbx
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
