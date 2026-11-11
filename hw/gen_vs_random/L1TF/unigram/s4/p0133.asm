.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 125 # instrumentation
cmovbe rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
sbb bl, dil
movzx di, al
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
xor dil, cl
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
dec eax
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 11
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
