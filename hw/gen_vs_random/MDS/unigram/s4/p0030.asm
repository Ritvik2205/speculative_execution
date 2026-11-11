.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
or edi, edi
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
cmovb si, si
cmovbe dx, ax
and dl, 32 # instrumentation
cmovnbe edx, esi
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
cmovns edi, edx
jmp .bb_0.1
.bb_0.1:
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and sil, cl
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
