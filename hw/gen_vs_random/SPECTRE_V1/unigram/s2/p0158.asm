.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 88
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], 11
cmovle rdx, rbx
setno bl
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
add cl, -36
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, dil
lea cx, qword ptr [rdx + rax]
cmovnbe rax, rbx
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
