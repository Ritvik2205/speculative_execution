.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, 200
or sil, dil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and dil, 8 # instrumentation
cmovz rax, rdi
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], -65
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
xor dl, -19
btc rbx, rcx
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and al, 42 # instrumentation
cmovz edx, ecx
btr di, cx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
