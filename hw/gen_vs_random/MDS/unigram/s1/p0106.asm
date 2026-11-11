.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 82
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 27
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
test bl, -9
test cl, 73
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and cl, 123 # instrumentation
cmovo si, cx
cmovnb rdx, rbx
xor sil, sil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and dl, 47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
or al, al
test eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
