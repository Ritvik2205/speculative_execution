.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 22
or bl, dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and dil, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
and dl, 91 # instrumentation
cmovnle eax, eax
and dil, -35 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
cmovle dx, si
cmovb rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and bl, 45 # instrumentation
cmovnb di, dx
xor bl, sil
or di, 53
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
bts eax, 222
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
