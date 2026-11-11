.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and al, sil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
or al, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor sil, -46
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 31
bt esi, ebx
or cx, di
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
jmp .bb_0.1
.bb_0.1:
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
and al, -38 # instrumentation
cmovnb cx, cx
cmovl esi, edx
cmovle rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and dl, cl
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
test dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
