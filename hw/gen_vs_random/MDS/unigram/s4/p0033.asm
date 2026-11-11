.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 77
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdx
test edx, -372470678
and al, -38 # instrumentation
cmovnb cx, cx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
test di, 20
and bl, -123 # instrumentation
cmovnp dx, bx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
or al, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
