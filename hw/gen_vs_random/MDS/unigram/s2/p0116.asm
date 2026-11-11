.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb dx, si
cmovb edx, eax
and bl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 97
and dil, 42
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
cmovl rcx, rax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
or sil, -8
cmovo dx, ax
bt si, 58
and dl, -7
cmovno edx, edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and dl, 110 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
xor eax, 1170472196
and cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
