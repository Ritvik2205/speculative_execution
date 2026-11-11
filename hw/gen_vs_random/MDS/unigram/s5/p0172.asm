.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, -1843375753
and rcx, -63
btr si, dx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
btr bx, 188
cmovb di, di
or al, -61
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], esi
and cl, -19
jmp .bb_0.1
.bb_0.1:
test ax, 6113
and bl, 101 # instrumentation
cmovno ecx, ebx
xor dl, cl
and dl, -59 # instrumentation
cmovbe cx, di
cmovnb rax, rdx
and cl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
test bx, 25542
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
bts dx, 50
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
