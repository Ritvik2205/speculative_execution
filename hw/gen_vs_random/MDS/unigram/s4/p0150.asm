.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
cmovz esi, esi
or edi, -88
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
test al, 22
and dl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
or di, 62
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor al, bl
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
cmovz di, cx
test ebx, -961564216
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
or rcx, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
