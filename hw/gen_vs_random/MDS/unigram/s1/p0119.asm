.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 15
bt esi, 3
or bl, -52
cmovnb edi, edx
or bl, -52
test bl, -9
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], edx
and ax, -122
btc ecx, 81
cmovs ecx, edx
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
btc rdi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
or sil, -49
cmovo rcx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
