.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
cmovz cx, cx
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
cmovno rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
cmovle esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and cl, 118 # instrumentation
cmovp esi, ebx
cmovz esi, eax
bt rcx, rbx
and al, -40 # instrumentation
cmovle di, ax
test ecx, -1843375753
cmovnle rax, rsi
xor sil, 27
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
xor bl, 67
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
