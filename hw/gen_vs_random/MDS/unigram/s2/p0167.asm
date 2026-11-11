.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 77
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bts bx, cx
test edi, -1252846009
and rcx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rcx]
xor ax, 31969
test dil, -51
test edi, -1252846009
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1782121130
cmovnbe edx, esi
cmovno rcx, rcx
cmovnbe edi, esi
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
