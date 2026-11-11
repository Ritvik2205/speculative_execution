.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and bl, 16 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rcx]
cmovno esi, ebx
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
xor dil, 124
cmovl edi, ecx
cmovns dx, bx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
test bl, -114
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
jmp .bb_0.1
.bb_0.1:
and edx, -44
or ebx, -15
cmovbe ecx, ebx
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and sil, -53 # instrumentation
cmovbe edx, esi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
