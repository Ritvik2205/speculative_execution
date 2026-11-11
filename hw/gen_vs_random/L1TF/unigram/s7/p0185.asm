.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 65
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
xor al, dl
sub dil, -70
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 74
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
mul ebx
bt dx, 132
jmp .bb_0.1
.bb_0.1:
cmovo rdi, rdx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
xchg ebx, eax
setb bl
sub rcx, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
