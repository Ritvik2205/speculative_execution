.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
xor al, al
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ecx
cmovs edx, esi
xor rdx, 48
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and cx, si
or sil, dil
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and dl, -7
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
btc rdi, 6
and cl, -109 # instrumentation
not rcx
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmovno eax, edx
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
