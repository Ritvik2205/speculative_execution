.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo dx, ax
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
xor eax, ebx
or dl, dl
bt rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
test bl, -9
cmovz si, si
and dl, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
cmovnb edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test ecx, -1843375753
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 30
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
