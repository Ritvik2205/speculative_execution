.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
adc dl, -12
add bl, dl
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
test al, al
or dil, cl
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sbb edi, 10
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 82
cmovnz ecx, eax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 13
test al, -32
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add dl, 82 # instrumentation
adc dl, bl
test al, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
