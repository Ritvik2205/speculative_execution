.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
cmovnz rsi, rdi
and dl, 57 # instrumentation
cmovnb cx, ax
xor dl, dil
cmovl ebx, esi
and rsi, 69
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and ebx, 91
not edx
and dil, -62
test rbx, 20
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
and dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
xor cl, 24
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
