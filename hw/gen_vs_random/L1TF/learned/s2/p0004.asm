.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 59
sbb bl, dil
and al, dl
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
cmovl esi, ecx
test sil, 29
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
lea rax, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
