.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, bl
and dil, -62
or sil, -78
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 57
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
cmovnp dx, bx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
cmovbe dx, ax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
or ecx, 47
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and bl, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], bx
and rbx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
