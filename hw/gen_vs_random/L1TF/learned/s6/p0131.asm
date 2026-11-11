.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
and al, -68
test al, sil
sub rax, 1806572419
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and al, -68
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
cmp dil, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
