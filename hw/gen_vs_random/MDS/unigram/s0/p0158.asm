.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, al
btr edi, ebx
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and eax, ebx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 112
and bl, bl
or edx, edx
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
bt rsi, rdi
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
cmovo ecx, edx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 10
xor sil, -126
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
