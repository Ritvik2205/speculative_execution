.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
cmovs dx, cx
xchg edi, ebx
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
xor dl, sil
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rdx + rax]
jmp .bb_0.2
.bb_0.2:
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
