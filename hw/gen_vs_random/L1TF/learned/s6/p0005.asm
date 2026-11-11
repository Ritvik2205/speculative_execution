.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 60
lea ax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and sil, al
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and dl, dl
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
