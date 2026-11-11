.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
or cx, -42
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and al, cl
and dil, dil
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
bt eax, 151
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
xor ax, -6793
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
