.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
or cx, 10
xor dx, 45
or rax, rdi
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 48
xor rbx, -51
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and dl, -73 # instrumentation
cmovns rbx, rax
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 24
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
and bl, sil
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
