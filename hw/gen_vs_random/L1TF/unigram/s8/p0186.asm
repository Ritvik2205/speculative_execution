.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, cl
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 82
test eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
inc al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
jmp .bb_0.1
.bb_0.1:
add bl, -92 # instrumentation
setnz sil
sbb dil, al
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
lea rax, qword ptr [rax + rbx]
bt rdi, rdi
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
