.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
bt bx, 253
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
xor cl, -13
cmovo edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
cmovns rdx, rcx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
xor al, dil
xor cl, al
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and dil, dl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
