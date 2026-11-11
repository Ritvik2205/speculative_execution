.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -263404965
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
add cx, 59
add dl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
cmovno dx, dx
xor sil, 49
add al, 31
add dl, -48 # instrumentation
lea esi, qword ptr [rsi + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], -40
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], eax
lea rsi, qword ptr [rdx]
lea ecx, qword ptr [rax]
xor eax, ecx
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
cmovb ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
