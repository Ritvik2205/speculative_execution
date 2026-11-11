.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
or bl, dl
and ax, 5001
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
cmovnp rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
cmovnp rbx, rdi
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
xor dil, -70
cmovnbe cx, di
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
or si, dx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
not ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
