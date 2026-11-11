.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and dl, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
xor eax, 1640090871
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
test al, al
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
or eax, 359647041
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
and bl, 6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
btr bx, ax
and rax, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rax]
cmovb rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
