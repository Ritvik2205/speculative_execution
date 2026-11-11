.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
or rcx, -17
bt esi, eax
and dl, 125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -103
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and dl, -27 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
cmovs ecx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
xor sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
