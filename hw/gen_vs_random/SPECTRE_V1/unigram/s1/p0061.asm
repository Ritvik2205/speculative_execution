.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edi, 55
or di, 0b1000000000000000 # instrumentation
bsf ax, di
add dil, 40 # instrumentation
lea di, qword ptr [rcx + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
cmovb ax, ax
add dl, 125 # instrumentation
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 6
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], dx
test cl, -49
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
adc rdi, -75
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx], 32
sbb sil, dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
