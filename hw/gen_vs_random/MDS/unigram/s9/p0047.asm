.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
cmovs ecx, esi
test rdx, 91
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and dil, 38 # instrumentation
cmovbe ecx, edi
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
or ecx, 21
xor dl, 34
cmovno dx, si
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
not al
bts rcx, rsi
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
