.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
lea eax, qword ptr [rdx]
xor al, al
and cl, 17
cmp eax, 951020724
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
lea edi, qword ptr [rbx]
or dl, -92
jns .bb_0.2
jmp .exit_0
.bb_0.2:
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
