.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdi, rcx
and al, -8
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
bts rcx, 100
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
btr dx, cx
cmovnle rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
cmovl eax, esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 40
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
not dl
cmovnz ax, di
test cl, bl
and dl, bl
and bl, -56 # instrumentation
cmovnle edi, esi
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
