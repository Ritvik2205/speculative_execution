.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 65
or ax, -7150
or dl, -8
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
xor dil, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
btr eax, ecx
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
not sil
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
test al, -7
test rax, 1000448998
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or rax, -689609688
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
