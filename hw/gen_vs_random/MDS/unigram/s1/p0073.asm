.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
test eax, esi
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and cl, -116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rdx, rax
cmovnz bx, si
and al, al
test di, 7
jmp .bb_0.1
.bb_0.1:
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
btr esi, 3
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 80
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and dil, dil
and rbx, 65
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
