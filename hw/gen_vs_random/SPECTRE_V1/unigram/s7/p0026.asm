.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
setnz cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
add cx, -103
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
xor sil, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
btr rbx, 91
test al, -99
imul rbx
lea rcx, qword ptr [rsi + rdi]
mov rcx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
cmovnp rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
