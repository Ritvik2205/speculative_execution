.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
or eax, eax
or sil, -78
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
bts esi, 82
not sil
cmovnle rbx, rax
or al, al
cmovz rax, rdi
or dl, 85
and bl, 68
bts dx, bx
and al, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
cmovp rax, rsi
xor bl, sil
or cl, 30
and bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
test rax, -363019044
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
