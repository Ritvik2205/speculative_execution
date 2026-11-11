.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
cmovbe si, dx
cmovle dx, si
test al, -81
and cl, -23 # instrumentation
cmovno edx, eax
bt ax, di
xor dl, al
cmovo eax, eax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and cl, 6 # instrumentation
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], esi
test cl, 0
test al, 127
or dl, -31
or sil, al
or dl, -8
bts dx, bx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
