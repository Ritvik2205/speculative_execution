.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, rdx
cmovb bx, ax
cmovnbe ecx, edx
cmovbe rsi, rdx
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
not eax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 93
and bl, dl
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
not di
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
and cl, -109 # instrumentation
not rbx
btr di, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
