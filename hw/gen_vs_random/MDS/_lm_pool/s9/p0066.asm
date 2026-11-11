.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
test dil, -51
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
or sil, dil
xor al, 55
or al, cl
or al, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and edx, -44
and cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rcx]
and di, 91
or al, 25
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
