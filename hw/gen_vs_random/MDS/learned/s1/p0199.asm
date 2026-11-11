.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -2116875023
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 76
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt edi, 254
and al, 93
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
or dl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
or al, -8
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 11
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
test rax, 1732677821
mov al, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
cmovno esi, eax
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and al, 93
test dil, -72
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
cmovz rcx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
