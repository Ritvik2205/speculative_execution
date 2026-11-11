.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
test rsi, rax
or dil, dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmovp bx, dx
and cl, -128 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
cmovp rcx, rdx
btr rdi, rsi
or dl, 51
and cl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and di, 91
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovo ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
cmovl ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
