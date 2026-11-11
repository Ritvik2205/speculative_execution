.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz ax, cx
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 7
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
cmovno cx, si
setbe bl
setnp dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle edi, eax
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
test al, 40
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 85
and bl, cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
