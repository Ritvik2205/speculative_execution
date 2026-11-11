.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
add di, 82
adc rax, -457629677
adc bl, bl
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
neg sil
sbb cl, -123
jmp .bb_0.1
.bb_0.1:
and dl, 60 # instrumentation
cmovno edi, edi
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
inc bl
imul bl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
add rax, -1969014465
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
