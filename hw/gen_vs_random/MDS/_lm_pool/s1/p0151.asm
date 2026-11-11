.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
or al, al
and al, dl
jmp .bb_0.1
.bb_0.1:
or al, dl
cmovnp rsi, rcx
xor sil, cl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or rdi, -11
or cx, 39
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
or esi, ebx
and al, al
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and esi, 9
or rax, 52
xor sil, al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
