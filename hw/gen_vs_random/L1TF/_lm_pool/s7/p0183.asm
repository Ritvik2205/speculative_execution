.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
not esi
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
or cl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or ax, 11821
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
