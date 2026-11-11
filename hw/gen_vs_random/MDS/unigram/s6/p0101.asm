.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 21
and bl, -13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
or ebx, ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rax]
cmovnbe ebx, edi
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
and al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
xor dil, dil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 82
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
cmovnz cx, ax
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
cmovno rdx, rcx
or dil, dl
cmovle di, bx
and cl, 123 # instrumentation
cmovo si, cx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
