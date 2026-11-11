.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, bl
and rdi, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
and dl, -73
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
cmovnb rdx, rsi
cmovb rdx, rdx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
or dl, -31
not rsi
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
bt rdi, rax
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
cmovle rsi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
xor sil, dil
test dx, 16353
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
