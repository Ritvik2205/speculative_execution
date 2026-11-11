.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rbx]
lea bx, qword ptr [rcx + rsi]
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and edx, edi
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
xor sil, sil
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
add cl, 40 # instrumentation
cmovbe dx, bx
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
add al, 55 # instrumentation
lea eax, qword ptr [rbx + rcx + 80]
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
