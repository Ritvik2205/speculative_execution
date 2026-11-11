.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
or si, dx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], si
cmovnp rbx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
cmovnp rdx, rcx
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
not ebx
or bl, dl
cmovnbe cx, di
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
xor dil, 8
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
