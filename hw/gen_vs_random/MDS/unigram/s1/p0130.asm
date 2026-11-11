.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 85 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
cmovle ebx, esi
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
xor dl, al
or bl, -98
not dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rbx]
or sil, -8
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
or dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
bts rbx, 70
btr dx, 100
test dx, 85
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rax
cmovnl ecx, esi
and dil, -3 # instrumentation
cmovnb di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
