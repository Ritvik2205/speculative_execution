.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl cx, ax
dec cl
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
lea di, qword ptr [rbx]
and sil, cl
inc di
not al
add dl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
movsx edi, dil
imul cx, si, 65
movsx dx, bl
mov bl, dl
lea edi, qword ptr [rbx]
lea edi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
