.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 16
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
setnbe al
add sil, 100 # instrumentation
lea bx, qword ptr [rsi]
lea rdi, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
sbb rdi, 71
bts ecx, esi
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
cmovl cx, ax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
