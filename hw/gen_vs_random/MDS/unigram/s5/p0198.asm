.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
and sil, -108 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
cmovnbe rax, rax
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
and ecx, eax
test bl, sil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and bl, -24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
test di, ax
cmovnb di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
