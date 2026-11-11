.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
setno sil
and dil, al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 30
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
bt ax, 96
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 83
sbb dl, al
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
test esi, 100
test sil, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
