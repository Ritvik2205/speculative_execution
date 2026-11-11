.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
xor bl, -27
and rdi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdi]
cmovnb ax, si
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
cmovo rdi, rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
xor rcx, -2
cmovo rcx, rbx
cmovbe bx, dx
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
cmovz dx, ax
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
or cl, sil
cmovnz esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
