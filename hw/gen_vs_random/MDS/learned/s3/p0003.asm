.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rbx
bts rax, 117
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and dl, cl
or eax, -1642752131
cmovo dx, si
jmp .bb_0.1
.bb_0.1:
add ebx, eax
jmp .bb_0.2
.bb_0.2:
and bl, -34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
btc cx, 104
xor ebx, ebx
and si, ax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rsi
cmovp si, si
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
cmovle ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
cmovno esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
