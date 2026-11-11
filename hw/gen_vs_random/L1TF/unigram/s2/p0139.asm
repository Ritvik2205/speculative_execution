.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, 57
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 22
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 57
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
imul rdx, rdx
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
add al, 48 # instrumentation
cmovnz esi, esi
cmp sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
