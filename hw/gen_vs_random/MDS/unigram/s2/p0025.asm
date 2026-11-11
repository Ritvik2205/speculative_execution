.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
or dil, -71
cmovnb di, cx
bt di, dx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
cmovno rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
cmovp eax, edi
and al, -83 # instrumentation
cmovnp rax, rcx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovo si, dx
bts rax, rsi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
btr rsi, 146
or dl, sil
and rax, rbx
and dl, -1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
