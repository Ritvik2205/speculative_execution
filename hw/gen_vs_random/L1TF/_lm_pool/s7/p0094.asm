.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, cx
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
or sil, al
sbb ecx, 9
add bl, 68
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edi
and si, 50
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
add al, -80
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
test ax, 13284
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
