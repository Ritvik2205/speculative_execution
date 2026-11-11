.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
test bx, 25542
not bx
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
and dl, -26 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
or al, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rcx], bx
and al, dl
xor dil, al
bt esi, ecx
or dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and sil, -128 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
test rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
