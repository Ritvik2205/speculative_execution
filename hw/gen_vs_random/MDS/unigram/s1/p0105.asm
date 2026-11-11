.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
test bl, 65
not di
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
xor bx, 88
or dx, dx
and ax, 5001
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
cmovnz rcx, rbx
and di, 91
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and dl, -127 # instrumentation
cmovno eax, esi
and cl, bl
cmovnz di, cx
or al, 25
xor sil, 110
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
cmovnbe edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
